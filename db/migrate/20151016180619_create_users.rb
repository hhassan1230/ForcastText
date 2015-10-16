class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :phone_number, null: false, limit: 10
      t.string :name
      t.timestamps null: false
    end

  end
end
