class CreateSubjects < ActiveRecord::Migration[7.1]
  def change
    create_table :subjects do |t|
      t.string :sub_name, null:false
      t.string :sub_img, null:false
      t.timestamps
    end
  end
end
