require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Stirstack
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.generators do |g|
      g.stylesheets false
      g.assets false
      g.helper false
      g.template_engine false

      g.test_framework :rspec,
                       # controller_specs: false
                       # fixtures:         false,
                       # helper_specs:     false,
                       # routing_specs:    false,
                       request_specs: false,
                       view_specs: false
    end
  end
end
