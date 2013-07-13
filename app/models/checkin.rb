class Checkin < ActiveRecord::Base
	validates_uniqueness_of :user_hash
end
