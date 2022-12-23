class CreateTableFiles < ActiveRecord::Migration[7.0]
  def change
    create_table :table_files do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
