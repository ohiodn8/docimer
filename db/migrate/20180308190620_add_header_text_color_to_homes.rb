class AddHeaderTextColorToHomes < ActiveRecord::Migration[5.1]
  def change
    add_column :homes, :header_text_color, :string
  end
end
