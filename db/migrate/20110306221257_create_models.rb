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
  end

  def self.down
    drop_table :users
  end
end
