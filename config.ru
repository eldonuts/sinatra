require './web'
require 'sass/plugin/rack'

Sass::Plugin.options[:style] = :compressed
Sass::Plugin.add_template_location("./public/ss/sass","./public/ss")
use Sass::Plugin::Rack

run Sinatra::Application
