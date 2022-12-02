module Companies
  class ReviewsController < ApplicationController
    def new
      @review = company.reviews.new
    end

    def create
      @review = Review.new(review_params)
      @review.user = User.find(params[:user_id])
      if @review.save
        redirect_to companies_user_path(@review.user)
      else
        render "companies/users/show", status: :unprocessable_entity
      end
    end
    private

    def review_params
      params.require(:review).permit(:rating, :content)
    end
  end
end
