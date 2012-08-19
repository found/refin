require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(:default, Rails.env) if defined?(Bundler)

module CamDon
  class Application < Rails::Application
    config.time_zone = 'Eastern Time (US & Canada)'

    config.action_view.javascript_expansions[:defaults] = %w()

    config.action_controller.allow_forgery_protection = false 

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"

    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]

    config.to_prepare do
      Refinery.searchable_models = [Page, Program, NewsItem, Category]
    end
    
    config.generators do |g|
      g.stylesheets false
      g.test_framework :rspec, :fixtures => false, :view_specs => false, :helper_specs => false
      g.fixture_replacement :factory_girl, :dir => "spec/factories"
    end
    
    config.to_prepare do
      ::PagesController.module_eval do
        caches_page :show, :unless => proc {|c| c.user_signed_in? || c.flash.any? }
        caches_page :home, :unless => proc {|c| c.user_signed_in? || c.flash.any? }
      end
      ::Page.module_eval do
        after_save :clear_static_caching!
        after_destroy :clear_static_caching!

        def clear_static_caching!
          Page.all.map(&:url).map{|u|
            [(u if u.is_a?(String)), (u[:path] if u.respond_to?(:keys))].compact
          }.flatten.map{ |u| [(u.split('/').last || 'index'), 'html'].join('.')}.each do |page|
            if (static_file = Rails.root.join('public', page)).file?
              $stdout.puts "Clearing cached page #{static_file.split.last}"
              static_file.delete
            end
          end
        end
        protected :clear_static_caching!
      end
    end
  end
end
