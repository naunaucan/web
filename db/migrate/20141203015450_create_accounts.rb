class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :user_name
      t.text :deskripsi
      t.boolean :premium
      t.integer :income
      t.float :ranking
      t.decimal :fee
      t.date :birthday
      t.time :login_time

      t.timestamps
    end
  end
end
