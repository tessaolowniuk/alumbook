#Created by Victor
class SavedList < ActiveRecord::Base
  belongs_to :Login
  has_one :SavedListUser, dependent: :destroy
end
