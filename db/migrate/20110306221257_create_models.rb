class CreateModels < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email, :null => false

      t.timestamps
    end

    create_table :addresses do |t|
      t.references :user
      
      t.string :city, :null => false
    end

    create_table :interests do |t|
      t.string :name, :null => false
    end

    ["Door Knocking", "Presenting", "Admin"].each do |x|
      Interest.create!(:name => x)
    end

    create_table :interest_users do |t|
      t.references :user
      t.references :interest
    end

    create_table :tasks do |t|
      t.references :user

      t.string :name, :null => false
    end
  end

  def self.down
    drop_table :users
  end
end
