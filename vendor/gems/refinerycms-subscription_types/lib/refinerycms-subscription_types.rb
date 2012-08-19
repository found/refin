require 'refinerycms-base'

module Refinery
  module SubscriptionTypes
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "subscription_types"
          plugin.activity = {
            :class => SubscriptionType}
        end
      end
    end
  end
end
