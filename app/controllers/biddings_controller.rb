

class BiddingsController < ApplicationController
	def create
		@bidding = Bidding.new(bid_params)
		if @bidding.save
			redirect_to product_path(@bidding.product_id)
		else
			render "product_path"
		end
	end
	def show

	end




	private
		def bid_params
		params.require(:bidding).permit(:user_id, :amount, :product_id)
	end

end
