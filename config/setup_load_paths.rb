if ENV['MY_RUBY_HOME'] && ENV['MY_RUBY_HOME'].include?('rvm')
  begin
    gems_path = ENV['MY_RUBY_HOME'].split(/@/)[0].sub(/rubies/,'gems')
    ENV['GEM_PATH'] = "#{gems_path}:#{gems_path}@global"
    require 'rvm'
    RVM.use_from_path! File.dirname(File.dirname(__FILE__))
  rescue LoadError
    raise "RVM gem is currently unavailable."
  end
end

# If you're not using Bundler at all, remove lines bellow
ENV['BUNDLE_GEMFILE'] = File.expand_path('../Gemfile', File.dirname(__FILE__))
require 'bundler/setup'
#
# Select the correct item for which you use below.
# If you're not using bundler, remove it completely.
#
# # If we're using a Bundler 1.0 beta
# ENV['BUNDLE_GEMFILE'] = File.expand_path('../Gemfile', File.dirname(__FILE__))
# require 'bundler/setup'
#
# # O:r Bundler 0.9...
# if File.exist?(".bundle/environment.rb")
#   require '.bundle/environment'
# else
#   require 'rubygems'
#   require 'bundler'
#   Bundler.setup
# end
