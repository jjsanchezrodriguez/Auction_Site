module ProductsHelper
	def product_params
	  params.require(:product).permit(:title, :description, :deadline, :userid)
	end
end
