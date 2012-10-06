require 'rubygems'
require 'rake'

# by default, build and serve locally
task :default => 'local:serve'

# development mode: ENGAGED!
namespace :local do

    desc 'start this bidness up for local development'
    task :dev do
        fork do
           sh 'sass --watch ./static/css/style.scss:static/css/style.css'
        end
        sh 'ruby application.rb -p 5000'
    end

end

# all the fancy heroku options
namespace :remote do

    desc 'build and export the sass'
    task :sass do
        sh 'sass --update ./static/css/style.scss:static/css/style.css'
    end    

    desc 'serve remotely'
    task :serve => [:sass] do
        sh 'bundle exec thin start -p $PORT -e $RACK_ENV'
    end

end