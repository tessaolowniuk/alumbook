#Created by Tessa, Modified by Victor
class Survey < ActiveRecord::Base
  self.inheritance_column = nil
  belongs_to :login
  has_many :user_surveys
  has_many :survey_questions

  accepts_nested_attributes_for :user_surveys
end
