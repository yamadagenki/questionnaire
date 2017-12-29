class CreateAnswerItems < ActiveRecord::Migration[5.1]
  def change
    create_table :answer_items do |t|
      t.references :answer, foreign_key: true
      t.references :question, foreign_key: true
      t.integer    :rate

      t.timestamps
    end
  end
end
