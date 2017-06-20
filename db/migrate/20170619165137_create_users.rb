class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest, null: false
      t.integer :nausea
      t.integer :happiness
      t.integer :tickets
      t.integer :height
      t.boolean :admin, null: false, default: false
    end
  end
end
