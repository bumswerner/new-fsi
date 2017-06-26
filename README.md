# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
* 
1. rvm install ruby-2.4.1
2. rvm --default ruby-2.4.1
3. rvm list // check if the correct ruby version selected
4. gem install rails
5. gem install bundler
6. 
7. rails new [project-name]
8. 
9. git --version
10. git config --global user.name = [username]
11. git config --global user.email = [email]
12. git config --global --list // shows a list of all settings
13. git init // initialize a new empty respository
14. git add -A // include all new or added files to the respository
15. git status // shows the current respository status
16. git commit -m "description of commit"
17. git push // pushed all file to the remote respository
18. git checkout -f // reset to the last commit  
    git reset --hard // stellt die vorherige Version wieder her
19. GIT <---> Cloud9
    cat ~/.ssh/id_rsa.pub // Zeigt den SSH-Key an
    kopiere den kompletten Schlüssel und füge ihn deinem  Github-Accout hinzu
    Erzeuge ein neues Repository

    …or push an existing repository from the command line:
    git remote add origin git@github.com:bumswerner/alpha-blog.git // in die Console von C9 eintragen
    dann zum testen 'git remote -v' eingeben
    git push -u origin master // pushed den Code zum Repository

20. Install devise
    gem 'devise'
    bundle install --without production
    rails generate devise:install
    - config/environments/development.rb 
    --> config.action_mailer.default_url_options = { host: 'localhost', port: 8080 }
21.
    rails generate devise User
    if you add the confirmable option in the model, you'll need to uncomment the Confirmable section in the migration.
    controller/application_controller.rb -> before_action :authenticate_user!
    rake db:migrate
22.
    gem 'twitter-bootstrap-rails'
    bundle install --without production
    rails generate bootstrap:install static
    rails g bootstrap:layout application (then hits Y und enter)
23.
    gem 'devise-bootstrap-views'
    bundle install --without production
24.
    add this line to file assets/stylesheets/application.css
    over the line  *= require_tree . 
    *= require devise_bootstrap_views
25.
    rails g devise:views:locale en
    rails g devise:views:bootstrap_templates

21. 

21. 








