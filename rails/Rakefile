require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

begin
  require 'minitest/autorun'
rescue LoadError => e
  raise e unless ENV['RAILS_ENV'] == "production"
end

task :do_nothing do |t|
  puts "we should write tests"
end

task :default => [:do_nothing]
