require 'refinerycms-base'

module Refinery
  module ContentHolders
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "content_holders"
          plugin.activity = {
            :class => ContentHolder}
        end
      end
    end
  end
end
