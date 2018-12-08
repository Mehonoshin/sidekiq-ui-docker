require 'sidekiq'
require 'sidekiq/web'

require './config/sidekiq'

run Sidekiq::Web

map '/' do
  run Sidekiq::Web
end
