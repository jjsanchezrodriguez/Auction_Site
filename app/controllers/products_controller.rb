class ProductsController < ApplicationController
  def index
      @products = Product.all
  end

  def show 
      @product = Product.find params[:id]
  end

  def new 
      @product = Product.new
  end

  def create 
  	# binding.pry
  	 @product = Product.new(product_params)
  	 @product.save
  	 redirect_to products_path
  end

  private
	def product_params
		return params.require(:product).permit(:title, :description,:deadline,:user_id)
	end


end
