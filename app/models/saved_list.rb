#Created by Victor
class SavedList < ActiveRecord::Base
  belongs_to :Login
  has_one :saved_list_user, dependent: :destroy
end
