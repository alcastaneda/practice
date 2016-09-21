class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :dba_name
      t.string :aka_name
      t.string :address
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
