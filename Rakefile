# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.
# module ::CamDon
#   class Application
#     include Rake::DSL
#   end
# end
# 
# module ::RakeFileUtils
#   extend Rake::FileUtilsExt
# end

require File.expand_path('../config/application', __FILE__)
require 'rake'
require 'rake/testtask'
require 'rdoc/task'

# add this (and perhaps make it conditional on Rails.version if you like):
Rake.application.options.ignore_deprecate = true

CamDon::Application.load_tasks
