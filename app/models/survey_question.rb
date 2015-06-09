#Created by Tessa, Modified by Victor
class SurveyQuestion < ActiveRecord::Base
  self.inheritance_column = nil
  belongs_to :survey
  has_many :survey_question_options
  has_many :user_survey_responses
end
