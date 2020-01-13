# Everquote
https://everquote-app.herokuapp.com/ "Everquote's Homepage"

Everquote is a website and web app clone of Evernote - the popular notes editing and management site. It is a CRUD app built on Redux-React front-end and Ruby on Rails back-end, using PostgreSQL as our relational database management system, using SASS for styling, and Webpack to bundle JS modules.

Everquote has many of the same capabilities of the original web app, including user creation/authentication, note and notebook creation, deletion, editing, and viewing. It also utilizes Quill, an open source  WYSIWYG text editor library with customizable rich text formatting capabilities. 
<p align="center">
    <img width="600" height="600" src="https://github.com/imshentastic/Everquote/blob/master/app/assets/images/penguin-icon.png" alt="Everquote icon">
</p>

## Usage example
![Notebook functionality](https://github.com/imshentastic/Everquote/blob/master/app/assets/images/notebook-functionality.gif)


## Development setup
```sh
1. `npm install`
2. `bundle install`
3. `bundle exec rails db:setup`
4. Run postgres
5. `rails s` for Rails server
6. `npm start` to run `webpack -w`
7. Navigate to localhost:3000
```

## Meta
Michael Shen - michael.pocheng.shen@gmail.com

https://github.com/imshentastic/Everquote


1. Bonus Features: (To be implemented)
2. Search Function
3. Starred list
4. Trashed list
5. Auto-save and auto-complete
6. AWS for hosting images
