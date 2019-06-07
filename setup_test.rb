require "active_record"
Dir["./models/*.rb"].each {|file| require file }

puts "check Settings..."
config = YAML.load_file("#{File.dirname(__FILE__)}/config/databas.yml")
ActiveRecord::Base.establish_connection(config['development'])
puts "database setup success🎉"
items = Item.all
categories = Category.all
puts "success of Settings🎉"
