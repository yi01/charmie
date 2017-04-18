class ReviewsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
  end

  def create
    Review.create(reviews_params)
    redirect_to :root
  end

  private
  def reviews_params
    params.require(:review).permit(:title, :content, :place).merge(user_id: current_user.id, product_id: params[:product_id])
  end
end
