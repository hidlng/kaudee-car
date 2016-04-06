class Favorite < ActiveRecord::Base
 validates_uniqueness_of :user_id, :scope => :room_id
end
