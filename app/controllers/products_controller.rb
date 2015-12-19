class Datas
  attr_accessor :amount, :name
  def initialize(amount, name)
    @amount = amount
    @name = name
    
  end
  
  
end

class ProductsController < ApplicationController
  def index
      @products = Product.all
  end

  def show 
      @product = Product.find params[:id]
      @only_bids = @product.bids.where(product_id: @product.id)
      @bids = name_user_bid(@only_bids)
      @bid = Bid.new
  end

  def new 
      @product = Product.new
  end

  def create 
  	@product = Product.new(product_params)
  	if @product.save
	 	# flash[:notice] = "Product created!"
		redirect_to products_path
		# redirect_to @project #it's the same as redirect_to project_path(@project)
	else
		@errors = @product.errors.full_messages
		# flash.now[:alert] = "There was a problem creating a product"
		render 'new'
	end
  	
  end

  private
	def product_params
		return params.require(:product).permit(:title, :description, :deadline, :user_id)
	end

  def name_user_bid(only_bids)
    @bids = Array.new
    only_bids.each do |bid|
      aux = User.find(bid.user_id)
      new_bid = Datas.new(bid.amount, aux.name)
      @bids << new_bid
    end  
    return @bids
  end


end


