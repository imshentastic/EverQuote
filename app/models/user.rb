# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord

    validates :email, :password_digest, :session_token, presence:true
    # validates :email, email: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :password, length: { minimum: 6 }, allow_nil:true
    validates :session_token, :email, uniqueness:true

    before_validation :ensure_session_token

    has_many :notebooks,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :Notebook,
        foreign_key: :user_id,
        dependent: :destroy

    has_many :notes,
        primary_key: :id,
        foreign_key: :author_id,
        class_name: :Note,
        dependent: :destroy

    has_many :tags,
        foreign_key: :user_id,
        dependent: :destroy

    has_many :taggings,
        through: :tags,
        source: :notes


    attr_reader :password

    
    def self.find_by_credentials(email, password)
        user = User.find_by(email: email)
        return nil unless user
        user.is_password?(password) ? user : nil
    end
    
    def self.generate_session_token
        SecureRandom.urlsafe_base64(16)
    end    
    
    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end

    def reset_session_token!
        self.session_token = User.generate_session_token
        self.save!
        self.session_token
    end

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

    private

    def ensure_session_token
        self.session_token ||= User.generate_session_token
    end

end
