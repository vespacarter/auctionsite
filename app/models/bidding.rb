	class Bidding < ActiveRecord::Base

		 belongs_to :product
		def self.get_highest_bid(product_id)
			find_by(product_id: product_id).order('amount DESC').first
		end
	end
