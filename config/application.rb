require_relative 'boot'
require 'rails/all'

Bundler.require(*Rails.groups)

module Projects
  class Application < Rails::Application
    config.load_defaults 5.1

    config.generators do |g|
      g.test_framework :rspec,
      fixtures: false, # will be replaced for factory_bot gem (factory_girl)
      view_specs: false,
      helper_specs: false,
      routing_specs: false
    end
  end
end
