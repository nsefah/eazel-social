require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module EazelSocial
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    #Once the schema is set up, the next step is to get the models set up
    # and the proper inheritance tree established. But, before you do that,
    #make sure to add any subfolders in your app/models folder to the autoload
    #path in the application.rb file. This will ensure that Rails knows to look
    #at subfolders, which may be good to use to effectively organize your model
    #files.

    config.autoload_paths += %W(#{config.root}/app/models/user)
  end
end
