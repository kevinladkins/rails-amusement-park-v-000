class CreateUsers < ActiveRecord::Migration
  create_table :users do |t|
    t.string :name
    t.string :password_digest
    t.integer :nausea
    t.integer :happiness
    t.integer :tickets
    t.integer :height
    t.boolean :admin, null:false, default:false
  end

  # Write your migrations here
end
