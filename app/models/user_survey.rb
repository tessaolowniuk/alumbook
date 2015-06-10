#Created by Tessa, Modified by Victor
class UserSurvey < ActiveRecord::Base
  self.inheritance_column = nil
  belongs_to :user
  belongs_to :survey
  has_many :user_survey_responses
end
