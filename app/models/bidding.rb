	class Bidding < ActiveRecord::Base

		belongs_to :product

		def self.get_highest_bid(product_id)
			self.where(:product_id => product_id).order('amount DESC').first
		end

		def self.get_by_product(product_id)
			self.where(:product_id => product_id)
		end

	end