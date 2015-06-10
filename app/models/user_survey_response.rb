#Created by Tessa, Modified by Victor
class UserSurveyResponse < ActiveRecord::Base
  self.inheritance_column = nil
  belongs_to :user_survey
  belongs_to :survey_question
  belongs_to :survey_question_option
  belongs_to :survey_question_options_choice
end
