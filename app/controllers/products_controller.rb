class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    Product.create(product_params)
    redirect_to :root
  end

  private
  def product_params
    params.require(:product).permit(:name, :category, :subcategory, :content, :price).merge(user_id: current_user.id)
  end
end
