# Sinatra/Twitter Bootstrap 2 
# The quickstart kit
# by Mike Dory | 10.06.12

# require some things
require 'rubygems'
require 'sinatra'
require 'maruku'
require 'liquid'

# configure things as desired
# set :public_folder, File.dirname(__FILE__) + '/static'

# declare our handlers
get '/' do
  liquid :index, :locals => { 
    :title => 'hi!',
    :heading => 'Why, hello there!'
  }
end
