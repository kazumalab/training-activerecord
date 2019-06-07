require "active_record"
Dir["./models/*.rb"].each {|file| require file }

config = YAML.load_file("#{File.dirname(__FILE__)}/config/database.yml")
ActiveRecord::Base.establish_connection(config['development'])

items = Item.all
categories = Category.all
puts items.count
puts categories.count
