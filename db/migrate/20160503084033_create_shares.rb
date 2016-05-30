class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.string :username
      t.string :body
      t.date :created_at
      t.date :updated_at
      t.string :location
      t.string :car_make
      t.string :price
      t.string :route
      t.string :distance
      t.date :date
      t.string :luggage
      t.string :experience

      t.timestamps null: false
      
    end
  end
end
