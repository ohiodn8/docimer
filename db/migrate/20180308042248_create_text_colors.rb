class CreateTextColors < ActiveRecord::Migration[5.1]
  def change
    create_table :text_colors do |t|
      t.string :name
      t.string :color

      t.timestamps
    end
  end
end
