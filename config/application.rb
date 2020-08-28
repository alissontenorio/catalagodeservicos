require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Catalogo
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    #config.active_job.queue_adapter = :resque

    config.i18n.enforce_available_locales = false
    config.i18n.default_locale = 'pt-BR'
    config.time_zone = 'America/Maceio'

    config.cas_base_url = 'https://sistemas.ufal.br/cas'
    config.sigrh_ws_url = 'https://sigrh.sig.ufal.br/sigrh/servicos/servidores'
    config.service_url  = 'https://sistemas.ufal.br/sicam'
  end
end
