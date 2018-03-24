class CreateFootertexts < ActiveRecord::Migration[5.1]
  def change
    create_table :footertexts do |t|
      t.string :text

      t.timestamps
    end
  end
end
