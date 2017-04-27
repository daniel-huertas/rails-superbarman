class ReviewsController < ApplicationController
  before_action :set_bartender

  def new
    @review = @bartender.reviews.build
  end

  def create
    @review = Review.new(review_params)
    @review.bartender = @bartender
    if @review.save
      # format.html {
        redirect_to bartender_path(@bartender)
        # , notice: 'Thanks!' }
    else
      # format.html {
        render :new
      # }
    end
  end

private
def set_bartender
  @bartender = Bartender.find(params[:bartender_id])
end

def review_params
  @params = params.require(:review).permit(:content, :rating)
end

end


