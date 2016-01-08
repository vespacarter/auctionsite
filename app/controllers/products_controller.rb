class ProductsController < ApplicationController
	def all
		@products = Product.all
	end

	def index
		@user = User.find(params[:user_id])
		@products = @user.products.all
	end

	def new
		@user = current_user
		@product = @user.products.new
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to current_user
		else
			render "new"
		end
	end

	def show
		@product = Product.find(params[:id])
		@user = User.find(@product.user_id)
		@bidding = Bidding.new
		@bids = Bidding.get_by_product(@product.id)
		@highestbid = Bidding.get_highest_bid(@product.id)
	end

		def product_params
		params.require(:product).permit(:title, :description, :pic, :user_id)
	end
end
