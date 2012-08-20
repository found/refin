require 'refinerycms-base'

module Refinery
  module Businesses
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "businesses"
          plugin.activity = {
            :class => Business,
            :title => 'name'
          }
        end
      end
    end
  end
end
