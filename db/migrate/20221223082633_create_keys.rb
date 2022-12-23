class CreateKeys < ActiveRecord::Migration[7.0]
  def change
    create_table :keys do |t|
      t.string :key
      t.text :description
      t.string :status

      t.timestamps
    end

    add_reference :keys, :table_file, null: false, foreign_key: true
  end
end
