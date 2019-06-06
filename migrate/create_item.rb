require "active_record"

config = YAML.load_file("#{File.dirname(__FILE__)}/../config/database.yml")
ActiveRecord::Base.establish_connection(config['development'])
connection = ActiveRecord::Base.connection

connection.create_table :items do |t|
  t.string :name, null: false
  t.integer :state, null: false, default: 0
end
