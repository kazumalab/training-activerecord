require "active_record"
Dir["./models/*.rb"].each {|file| require file }

namespace :pg do
  task :install do
    system('docker run --name test -e POSTGRES_PASSWORD=test -p 5432:5432 -d postgres:latest')
    puts "pg install success🎉"
  end

  task :init do
    system('docker exec -it test createdb -U postgres test')
    puts "pg setup success🎉"
  end
end

namespace :db do
  task :migrate do
    config = YAML.load_file("config/database.yml")
    ActiveRecord::Base.establish_connection(config['development'])
    connection = ActiveRecord::Base.connection

    connection.drop_table :items, if_exists: true
    connection.drop_table :categories, if_exists: true

    connection.create_table :items, force: true do |t|
      t.string :name, null: false
      t.integer :state, null: false, default: 0
      t.integer :category_id, null: false
    end

    connection.create_table :categories, force: true do |t|
      t.string :name, null: false
    end
    puts "database setup success🎉"
  end
end
