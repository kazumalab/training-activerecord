require "active_record"
require_relative "./models/item"

config = YAML.load_file("#{File.dirname(__FILE__)}/config/database.yml")
ActiveRecord::Base.establish_connection(config['development'])

items = Item.all
puts items.count
