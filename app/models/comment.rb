class Comment < ActiveRecord::Base
	before_create :set_default
	belongs_to :article

	def set_default
		self.user_id = 1 unless self.user_id 
    	self.status = "active" unless self.status
   	end
end
