class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :rate
      t.text :comment
      t.boolean :counter_sheets_available
      t.boolean :solo_tables_available
      t.integer :frequent_solo_visitors
      t.integer :delivery_speed
      t.integer :easy_to_order
      t.integer :calmness

      t.timestamps
    end
  end
end
