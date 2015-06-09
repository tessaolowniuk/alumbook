#Created by Tessa, Modified by Victor
class UserSurvey < ActiveRecord::Base
  belongs_to :User
  belongs_to :Survey
  has_many :user_survey_responses
end
