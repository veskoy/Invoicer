class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, limit: 32
      t.string :password
      t.boolean :active
      t.integer :level, limit: 2
      t.string :last_ip, limit: 15, null: true, default: nil
    end
  end
end
