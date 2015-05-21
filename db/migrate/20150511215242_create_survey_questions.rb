class CreateSurveyQuestions < ActiveRecord::Migration
  def change
    create_table :survey_questions do |t|
      t.references :survey_id, index: true, foreign_key: true
      t.integer :question_type
      t.integer :display_order
      t.text :text
      t.boolean :required

      t.timestamps null: false
    end
  end
end
