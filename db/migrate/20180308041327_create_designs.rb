class CreateDesigns < ActiveRecord::Migration[5.1]
  def change
    create_table :designs do |t|
      t.integer :text_color_id
      t.integer :body_color_id

      t.timestamps
    end
    add_index :designs, :text_color_id
    add_index :designs, :body_color_id
  end
end
