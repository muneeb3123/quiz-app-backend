class CreateOptions < ActiveRecord::Migration[7.1]
  def change
    create_table :options do |t|
      t.string :value1, null: false
      t.string :value2, null: false
      t.string :value3, null: false
      t.string :value4, null: false
      t.references :quiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end
