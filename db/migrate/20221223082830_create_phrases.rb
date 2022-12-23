class CreatePhrases < ActiveRecord::Migration[7.0]
  def change
    create_table :phrases do |t|
      t.string :phrase
      t.text :description

      t.timestamps
    end

    add_reference :phrases, :key, null: false, foreign_key: true
    add_reference :phrases, :language, null: false, foreign_key: true
  end
end
