# == Schema Information
#
# Table name: notebooks
#
#  id         :bigint           not null, primary key
#  title      :string
#  user_id    :integer
#  starred    :boolean
#  default    :boolean
#  trashed    :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Notebook < ApplicationRecord
    attribute :starred, :boolean, default: false
    attribute :trashed, :boolean, default: false
    validates :title, presence: true, uniqueness: {scope: :user_id}

    belongs_to :user,
        class_name: :User
    
    has_many :notes,
        foreign_key: :notebook_id
    
end