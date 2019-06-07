require "active_record"

config = YAML.load_file("#{File.dirname(__FILE__)}/../config/database.yml")
ActiveRecord::Base.establish_connection(config['development'])
connection = ActiveRecord::Base.connection

connection.drop_table :items, if_exists: true
connection.drop_table :categories, if_exists: true
connection.drop_table :item_categories, if_exists: true

connection.create_table :items, force: true do |t|
  t.string :name, null: false
  t.integer :state, null: false, default: 0
end

connection.create_table :categories, force: true do |t|
  t.string :name, null: false
end

connection.create_table :item_categories, force: true do |t|
  t.integer :item_id, null: false
  t.integer :category_id, null: false
end
