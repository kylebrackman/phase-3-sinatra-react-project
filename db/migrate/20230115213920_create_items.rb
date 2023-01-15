class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :item_name
      t.string :item_description
      t.string :item_review
      t.integer :user_id
    end
  end
end
