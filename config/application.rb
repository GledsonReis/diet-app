require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DietApp
  class Application < Rails::Application
    config.time_zone = 'America/Sao_Paulo'
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    config.i18n.enforce_available_locales = false
    config.i18n.available_locales = %i[pt-BR en]
    config.i18n.default_locale = :'pt-BR'
    config.i18n.fallbacks = true

    config.i18n.load_path += Dir["#{Rails.root}/config/locales/**/*.{rb,yml}"]

    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
    config.autoload_paths << Rails.root.join('config', 'routes')
    config.autoload_paths += Dir["#{config.root}/lib/**/"]


    config.autoload_paths += Dir["#{config.root}/app/serializers/**/"]
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.to_prepare do
      Devise::SessionsController.layout 'auth'
      Devise::RegistrationsController.layout 'auth'
      Devise::ConfirmationsController.layout 'auth'
      Devise::UnlocksController.layout 'auth'
      Devise::PasswordsController.layout 'auth'
    end
  end
end
