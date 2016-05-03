class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.string :username
      t.string :body
      t.datetime :created_at
      t.datetime :updated_at
      t.string :location
      t.string :car_make
      t.string :price
      t.string :route
      t.string :distance
      t.datetime :date
      t.string :luggage
      t.string :experience

      t.timestamps null: false
      
    end
  end
end
