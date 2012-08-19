require 'refinerycms-base'

module Refinery
  module Orders
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "orders"
          plugin.activity = {
            :class => Order}
        end
      end
    end
  end
end
