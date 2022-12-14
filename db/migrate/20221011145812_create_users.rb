class CreateUsers < ActiveRecord::Migration[6.0]
  create_table :users do |t|
    t.string :name, null: false
    t.string :email, null: false
    t.string :password_digest, null: false

    t.timestamps
    t.index :email, unique: true
  end
end
