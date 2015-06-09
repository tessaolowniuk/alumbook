#Created by Tessa, Modified by Victor
class Survey < ActiveRecord::Base
  self.inheritance_column = nil
  belongs_to :Login
  has_many :user_surveys
  has_many :survey_questions
end
