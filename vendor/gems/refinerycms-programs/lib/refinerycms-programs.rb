require 'refinerycms-base'

module Refinery
  module Programs
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "programs"
          plugin.activity = {
            :class => Program,
            :title => 'program_name'
          }
        end
      end
    end
  end
end
