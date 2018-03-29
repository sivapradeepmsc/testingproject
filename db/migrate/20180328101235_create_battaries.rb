class CreateBattaries < ActiveRecord::Migration[5.1]
  def change
    create_table :battaries do |t|
      t.string :name
      t.references :phone, foreign_key: true

      t.timestamps
    end
  end
end
