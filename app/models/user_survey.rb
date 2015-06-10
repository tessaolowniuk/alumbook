#Created by Tessa, Modified by Victor, Jeff, Max
class UserSurvey < ActiveRecord::Base
  self.inheritance_column = nil
  belongs_to :user
  belongs_to :survey
  has_many :user_survey_responses

  accepts_nested_attributes_for :survey
  accepts_nested_attributes_for :user_survey_responses
end
