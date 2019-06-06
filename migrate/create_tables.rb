require "active_record"

config = YAML.load_file("#{File.dirname(__FILE__)}/../config/database.yml")
ActiveRecord::Base.establish_connection(config['development'])
connection = ActiveRecord::Base.connection

connection.drop_table :items, if_exists: true

connection.create_table :items, force: true do |t|
  t.string :name, null: false
  t.integer :state, null: false, default: 0
end
