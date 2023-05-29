class CreateAlibyes < ActiveRecord::Migration[7.0]
  def change
    create_table :alibyes do |t|
      t.string :title
      t.string :category
      t.string :user_id
      t.integer :price_per_hour
      t.text :description

      t.timestamps
    end
  end
end
