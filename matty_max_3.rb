#     /---------------------------------------------------------\
#    /   Matty Max 3                                             \
#   <                                                            /
#    \__________________________________________________________/

require 'sinatra/base'
require 'slim'

class MattyMax3 < Sinatra::Application
  get '/' do
    puts '/'
    slim :index
  end

  get '/shitty' do
    "Hello World"
  end

  # [noun] say [verb] to [noun]
  get '/shit' do
    puts '/shit'
    "fuck"
  end

  # [noun] say [verb] to [noun]
  get '/*/says/*/to/*' do
    puts '/*/says/*/to/*'
    third_p, shit, thing = params['captures']
    thing.match(/mattymax/i) ? "thx, h3ll0 #{third_p}" : "I'd bet #{thing} thinks so"
  end

  get '/css/*.*' do |path, ext|
    [path, ext] # => ["path/to/file", "xml"]
  end

  get '/js/*.*' do |path, ext|
    [path, ext] # => ["path/to/file", "xml"]
  end

  get '/img/*.*' do |path, ext|
    [path, ext] # => ["path/to/file", "xml"]
  end
end
