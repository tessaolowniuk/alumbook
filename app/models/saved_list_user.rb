#Created by Victor
class SavedListUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :saved_list
end
