require 'rubygems'
require 'rake'

# by default, build and serve locally
task :default => 'local:serve'

# development mode: ENGAGED!
namespace :local do

    desc 'start this bidness up for local development'
    task :dev do
        fork do
            sh 'ruby main.rb -p 5000'
        end
        fork do
           sh 'sass --watch ./static/css/style.scss:static/css/style.css'
        end
    end

end

# all the fancy heroku options
namespace :remote do

    desc 'build and export the sass'
    task :sass do
        sh 'sass --update ./static/css/style.scss:static/css/style.css'
    end    

    desc 'serve on heroku'
    task :serve => [:sass] do
        sh 'bundle exec thin start -p $PORT -e $RACK_ENV'
    end

end