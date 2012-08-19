require 'refinerycms-base'

module Refinery
  module Subscriptions
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "subscriptions"
          plugin.menu_match = /(admin|refinery)\/(subscriptions|subscription_transactions)$/
          plugin.activity = {
            :class => Subscription}
        end
      end
    end
  end
end
