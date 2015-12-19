
class BidsController < ApplicationController
	def new
		@product = Product.find(params[:product_id])
		@bid = Bid.new
	end


  def create 
  	
  	user_id = User.find_by(email: params[:email]) 
  	
 	bid = Bid.new
 	bid.amount = params[:amount]
 	bid.user_id = user_id.id
 	bid.product_id = params[:product_id]

 	bid.save
 	binding.pry
 #  	if @bid.save
	#  	# flash[:notice] = "Product created!"
	# 	redirect_to products_path
	# 	# redirect_to @project #it's the same as redirect_to project_path(@project)
	# else
	# 	@errors = @bid.errors.full_messages
	# 	# flash.now[:alert] = "There was a problem creating a product"
	# 	render "new"
	# end
	redirect_to(products_path)
   end	
	
	
	
end
