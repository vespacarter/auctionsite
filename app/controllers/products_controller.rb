class ProductsController < ApplicationController
	def all
		@products = Product.all
	end

	def index
		@user = User.find(params[:user_id])
		@products = @user.products.all
	end

	def new
		@user = User.find(params[:user_id])
		@product = @user.products.new
	end

	def create

	end

	def show
		@product = Product.find(params[:id])
		@user = User.find(@product.user_id)
		@bidding = Bidding.new
		# @highestbid = Bidding.get_highest_bid(@product.id)
	end
end
