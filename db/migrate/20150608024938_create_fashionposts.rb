class CreateFashionposts < ActiveRecord::Migration
  def change
    create_table :fashionposts do |t|
      t.string :day
      t.string :hat_url
      t.string :shirt_url
      t.string :jacket_url
      t.string :pants_url
      t.string :shoes_url
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
