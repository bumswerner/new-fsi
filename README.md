# README

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

    # skip the user authentication for index action
    skip_before_action :authenticate_user!, only: [:index]
22.
    gem 'twitter-bootstrap-rails'
    bundle install --without production
    rails generate bootstrap:install static
    rails g bootstrap:layout application 
    (then hits Y und enter)
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

26. # Use SCSS for stylesheets
    gem 'jquery-rails'
    gem 'bootstrap-sass', '~> 3.3.5'
    bundle install --without production
    assets/javascript/application.js
    //= require jquery
    //= require jquery_ujs
    //= require rails-ujs
    //= require bootstrap-sprockets
    //= require turbolinks
    //= require_tree .

27. prepare for anynines

   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!shit gem install a9s
    move gem 'sqlite3' to group :development, :test
    create new group in Gemfile
    group :production do
      gem 'pg'
      gem 'rails_12factor'
    end
    bundle install --without production

28. add to config/application.rb
    config.assets.initialize_on_precompile = false    

29. install cf cli  https://github.com/cloudfoundry/cli/releases/
    wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | sudo apt-key add -
    echo "deb http://packages.cloudfoundry.org/debian stable main" | sudo tee /etc/apt/sources.list.d/cloudfoundry-cli.list
    curl -L "https://cli.run.pivotal.io/stable?release=linux64-binary&source=github" | tar -zx
    sudo mv [your-download-dir]/cf /usr/local/bin/cf
    chmod +x /usr/local/bin/cf

30. cf api https://api.aws.ie.a9s.eu
31. cf login
    --> email and password form anynines account
    --> 1 for production
32. You can see the available organizations by tying:
    cf orgs
    To see all available spaces
    cf spaces
    
33. You can change or select an organization or a space by typing:
    cf target -s production
    cf create-service a9s-postgresql postgresql-single-small [name-of-application]
    cf service [name-of-application]
34.
    add manifest.yml file

    cf push --random-route 
    
     cf run-task [appname] rake db:migrate     
     cf logs fsi-htw --recent
      cf push [appname] -c "bundle exec rake db:migrate" 
      
https://support.anynines.com/hc/en-us/community/posts/234548468-How-to-deploy-your-apps-on-anynines

35. sudo apt update
    sudo apt install imagemagick
    
36. gem 'letter_opener_web'

how install cli and cf to codeanywhere


curl -L "https://cli.run.pivotal.io/stable?release=linux64-binary&source=github" | tar -zx
sudo mv cf /usr/local/bin
sudo curl -o /usr/share/bash-completion/completions/cf https://raw.githubusercontent.com/cloudfoundry/cli/master/ci/installers/completion/cf
cf --version
cf login 
API endpoint --> https://api.aws.ie.a9s.eu   
cf orgs

cf target -s production 
cf create-service a9s-postgresql postgresql-single-small [name-of-application]
cf service [name-of-application]
cf push [name-of-application]

fsi_worker_pgsel --> name of service
 
    
    
new cli for heroku

wget -qO- https://cli-assets.heroku.com/install-ubuntu.sh | sh





for cf

cf ssh [name-of-application] -t -c "/tmp/lifecycle/launcher /home/vcap/app 'rails c' ''"


Install RSpec

group :development, :test do
  
  gem 'rspec-rails', '3.5.0'


group :test do 
  gem 'capybara', '2.7.1'
end  


rails generate rspec:install

bundle binstubs rspec-core


Let's GO -----------------------------------------------------------------------

Process for creatung faculties feature test feature

  - Create a nranch to do the development work
  - Write feature test
  - Build features to make pass one by one
  - Once the feature test passes with no errors - merge branch with master branch

git checkout -b faculty-fecture-spec

rails generate scaffold Faculty name:string symbol:string description:text
rake db:migrate
rails g bootstrap:themed Faculties

------------------------------------------------------------------------------
Create a new git topic branch as follows:

git checkout -b adding-guard

Add the following gems to the development group of the Gemfile:
gem 'guard', '~> 2.14.0'
gem 'guard-rspec', '~> 4.7.2' 
gem 'guard-cucumber', '~> 2.1.2'

Run the following command to install the gems:
bundle install

Also run the command:
guard init

Run the command: 
bundle binstubs guard

Run:
cucumber --init 

Make a commit:
git add -A
git commit -m "Add Guard"
git checkout master
git merge adding-guard
git push



---------------------------------------------------------------------------
how to delete a branch
git branch -d [name-of-branch]



Add FactoryGirl

add gem 'factory_girl_rails' to development, :test group

After running bundle open up the spec/rails_helper.rb file and
add the following line inside of the configure block:
# spec/rails_helper.rb

config.include FactoryGirl::Syntax::Methods
mkdir spec/factories

create new file 
spec/factories/faculties.rb
and add in in the following ode:

FactoryGirl.define do
  factory :faculty do
    name "My Amazing Article"
    symbol "Jon Snow"
    description "bla bla"
  end
end



********************************************************************************
Section - Materials
********************************************************************************
********************************************************************************
++++ identity ++++ Faculty +++++++++++++++
********************************************************************************
rails generate scaffold Faculty name:string symbol:string description:text
rake db:migrate
rails g bootstrap:themed Faculties

class Faculty < ActiveRecord::Base
  has_many :courses
end
 
********************************************************************************
++++ identity ++++ Studytype +++++++++++++++
********************************************************************************
rails generate scaffold Studytype name:string symbol:string description:text
rake db:migrate
rails g bootstrap:themed Studytypes

class Coursetype < ActiveRecord::Base
  has_many :courses
end
 
 
********************************************************************************
++++ identity ++++ Courseofstudy ++++++++++++++++
********************************************************************************
rails generate scaffold Courseofstudy name:string symbol:string description:text faculty:references studytype:references
rake db:migrate
rails g bootstrap:themed Courseofstudies

class Courseofstudy < ActiveRecord::Base
  belongs_to :studytype
  belongs_to :faculty
  has_many :assoziations
  has_many :categories, :through => :assoziations
  has_many :lectures, :through => :assoziations
end

********************************************************************************
++++ identity ++++ Category +++++++++++++
********************************************************************************
rails generate scaffold Category name:string symbol:string description:text 
rake db:migrate
rails g bootstrap:themed Categories

class Category < ActiveRecord::Base
  has_many :assoziations
  has_many :lectures, :through => :assoziations
  has_many :courseofstudies, :through => :assoziations
end

********************************************************************************
++++ identity +++++ Lecture ++++++++++++++
********************************************************************************
rails generate scaffold Lecture name:string symbol:string description:text 
rake db:migrate
rails g bootstrap:themed Lectures

class Lecture < ActiveRecord::Base
  has_many :assoziations
  has_many :categories, :through => :assoziations
  has_many :courseofstudies, :through => :assoziations
  has_many :connections
  has_many :materials, :through => :connections
end
  
********************************************************************************
++++ identity +++++ Assoziation +++++++++
********************************************************************************
rails generate scaffold Assoziation code:string instructor:string category:references courseofstudy:references lecture:references
rake db:migrate
rails g bootstrap:themed Assoziations

class Assoziation < ActiveRecord::Base
  belongs_to :course
  belongs_to :category
  belongs_to :lecture
end

********************************************************************************
++++ identity +++++ Connection +++++++++
********************************************************************************
rails generate scaffold Connection name:string lecture:references section:references
rake db:migrate
rails g bootstrap:themed Connections

class Connection < ActiveRecord::Base
  belongs_to :lecture
  belongs_to :section
end

********************************************************************************
++++ identity +++++ Section +++++++++
********************************************************************************
rails generate scaffold Section name:string discription:text
rake db:migrate
rails g bootstrap:themed Sections

class Section < ActiveRecord::Base
  has_many :materials
  has_many :connections
  has_many :lectures, :through => :connections
end

********************************************************************************
++++ identity +++++ Material +++++++++
********************************************************************************
rails generate scaffold Material name:string discription:text data:attachment section:references lecture:references
rake db:migrate
rails g bootstrap:themed Materials

class Material < ActiveRecord::Base
  belongs_to :section
  belongs_to :lecture
end

 change_column(:materials, :id, :bigint)
 
 
********************************************************************************
Section - Benutzer
********************************************************************************

********************************************************************************
++++ identity +++++ User +++++++++
********************************************************************************
add_column  admin :boolean
add_column  moderator : boolean

********************************************************************************
++++ identity +++++ Profile +++++++++
********************************************************************************
rails generate scaffold Profile nickname:string avatar:attachment user:references
rake db:migrate
rails g bootstrap:themed Profiles

class Profile < ActiveRecord::Base
  belongs_to :user
end

********************************************************************************
Section - News
********************************************************************************
********************************************************************************
++++ identity +++++ Notification +++++++++
********************************************************************************
rails generate scaffold Notification title:string message:text image:attachment notificationtype:references
rake db:migrate
rails g bootstrap:themed Notification

class Notification < ActiveRecord::Base
  belongs_to :notificationtype
end

********************************************************************************
++++ identity +++++ Notificationtype +++++++++
********************************************************************************
rails generate scaffold Notificationtype name:string description:text
rake db:migrate
rails g bootstrap:themed Notificationtypes

class Notificationtype < ActiveRecord::Base
  has_many :notifications
end

********************************************************************************
Section - Gallery
********************************************************************************
********************************************************************************
++++ identity +++++ Gallery +++++++++
********************************************************************************
rails generate scaffold Gallery name:string description:text
rake db:migrate
rails g bootstrap:themed Galleries

class Gallery < ActiveRecord::Base
  has_many :pictures
end

********************************************************************************
++++ identity +++++ Picture +++++++++
********************************************************************************
rails generate scaffold Picture name:string image:attachment gallery:references
rake db:migrate
rails g bootstrap:themed Pictures

class Picture < ActiveRecord::Base
  belongs_to :gallery
end