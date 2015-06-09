#Created by Tessa, Modified by Victor
class SurveyQuestionOptionsChoice < ActiveRecord::Base
  belongs_to :survey_question
  has_many :user_survey_responses
end
