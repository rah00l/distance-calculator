require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DistanceCalculator
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1


    # preload tokens in application.yml to local ENV
    config = YAML.load(File.read(File.expand_path('../application.yml', __FILE__)))
    config.merge! config.fetch(Rails.env, {})
    config.each do |key, value|
      ENV[key] = value.to_s unless value.kind_of? Hash
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
