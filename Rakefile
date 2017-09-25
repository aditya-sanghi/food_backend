# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
begin
  require 'rspec/core/rake_task'

  desc 'Run API specs test in spec/controllers'
  RSpec::Core::RakeTask.new('spec:api') do |t|
    t.pattern    = 'spec/controllers/**/*_spec.rb'
    t.rspec_opts = ["-fd --color"]
  end
rescue LoadError
end

Rails.application.load_tasks
