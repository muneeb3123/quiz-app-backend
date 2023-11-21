class CreateQuizzes < ActiveRecord::Migration[7.1]
  def change
    create_table :quizzes do |t|
      t.string :question
      t.string :answer
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end
