class CreateLogotexts < ActiveRecord::Migration[5.1]
  def change
    create_table :logotexts do |t|
      t.string :text

      t.timestamps
    end
  end
end
