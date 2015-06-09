#Created by Victor
class SavedListUser < ActiveRecord::Base
  belongs_to :User
  belongs_to :SavedList
end
