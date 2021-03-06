class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :visible_name, null: false, unique: true
      t.string :email, null: false, unique: true
      t.string :password_digest, null: false
      t.integer :level, null: false, default: 0
      
      t.timestamps null: false
    end
  end
end
