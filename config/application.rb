require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module App
  class Application < Rails::Application
    Yelp.client.configure do |config|
      config.consumer_key = 'MIbzSvueKO0xyPYZuxkD-g'
      config.consumer_secret = 'TzxdmAnrJ1m40T34-0n8MSpBHnE'
      config.token = 'm6GeEZ_h2IyueBNVkvFllHe67YWxKgUW'
      config.token_secret = 'qyIzFmlESlYqCVLFDTpEzRfauoA'
    end
   # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
