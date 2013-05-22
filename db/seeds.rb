# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name({ :name => role }, :without_protection => true)
  puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :admin

# encoding: utf-8
# Autogenerated by the db:seed:dump task
# Do not hesitate to tweak this to your needs

puts 'LOCATIONS'
Location.create([
  { :name => "test", :description => "this is a test", :universe_id => 1, :created_at => "2013-05-21 01:55:05", :updated_at => "2013-05-21 01:55:05", :ancestry => nil },
  { :name => "test 2", :description => "another test", :universe_id => 1, :created_at => "2013-05-21 01:58:31", :updated_at => "2013-05-21 01:58:31", :ancestry => nil },
  { :name => "sub test 1", :description => "blah", :universe_id => 1, :created_at => "2013-05-21 01:58:58", :updated_at => "2013-05-21 01:58:58", :ancestry => "1" },
  { :name => "This  is the other test", :description => "TEstTEstTEstTEstTEstTEstTEstTEstTEstTEstTEstTEstTEstTEstTEstTEstTEst", :universe_id => 1, :created_at => "2013-05-21 02:11:33", :updated_at => "2013-05-21 02:11:33", :ancestry => "1" },
  { :name => "test of the test of the test", :description => "how low can it go", :universe_id => 1, :created_at => "2013-05-21 02:12:02", :updated_at => "2013-05-21 02:12:02", :ancestry => "1/4" },
  { :name => "the other test", :description => "some more please", :universe_id => 1, :created_at => "2013-05-21 02:21:27", :updated_at => "2013-05-21 02:21:27", :ancestry => nil },
  { :name => "where its at", :description => "just to be sure", :universe_id => 1, :created_at => "2013-05-21 02:21:43", :updated_at => "2013-05-21 02:22:01", :ancestry => "7" },
  { :name => "Sub sub test1", :description => "yea", :universe_id => 1, :created_at => "2013-05-22 15:35:58", :updated_at => "2013-05-22 15:35:58", :ancestry => "1/3" }
], :without_protection => true )

puts 'UNIVERSES'
Universe.create([
  { :name => "Test 1 ", :description => "the stuff here", :user_id => 1, :created_at => "2013-05-20 23:06:57", :updated_at => "2013-05-20 23:06:57" }
], :without_protection => true )
