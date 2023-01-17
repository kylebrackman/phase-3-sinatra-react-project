class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :item_name
      t.string :item_review
      t.string :username
      t.integer :item_rating
      t.integer :user_id
      t.timestamps
    end
  end
end
