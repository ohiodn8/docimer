class AddTextSizeToHomes < ActiveRecord::Migration[5.1]
  def change
    add_column :homes, :text_size, :integer
  end
end
