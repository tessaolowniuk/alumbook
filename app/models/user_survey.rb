#Created by Tessa, Modified by Victor
class UserSurvey < ActiveRecord::Base
  belongs_to :user
  belongs_to :survey
  has_many :user_survey_responses

  accepts_nested_attributes_for :survey
  accepts_nested_attributes_for :user_survey_responses, reject_if: :all_blank
end
