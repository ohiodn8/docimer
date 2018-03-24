class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.integer :category_id

      t.timestamps
    end
    add_index :blogs, :category_id
  end
end
