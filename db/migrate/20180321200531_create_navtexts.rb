class CreateNavtexts < ActiveRecord::Migration[5.1]
  def change
    create_table :navtexts do |t|
      t.string :text

      t.timestamps
    end
  end
end
