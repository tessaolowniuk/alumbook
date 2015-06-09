# Created by Victor, edited by Maxwell Barvian
class CompanyInfo < ActiveRecord::Base
  belongs_to :company, dependent: :destroy
  
  enum state: Geography::US_STATES.keys.map { |k| k.to_sym }
end
