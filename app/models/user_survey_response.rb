#Created by Tessa, Modified by Victor
class UserSurveyResponse < ActiveRecord::Base
  belongs_to :user_survey
  belongs_to :survey_question
  belongs_to :survey_question_option
  belongs_to :survey_question_options_choice

  # validates :response_text, presence: true, if: lambda { self.survey_question.required? }
end
