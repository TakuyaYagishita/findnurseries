class NurseriesController < ApplicationController

 # before_action :move_to_index, except: :index

    def index
      @nurseries = Nursery.order("created_at DESC")
    end

    def show
      @nursery = Nursery.find(params[:id])
      @comments = @nursery.comments.includes(:user)
    end

    # def edit
    #   @nursery = Nursery.find(params[:id])
    # end

    # def destroy
    #   tweet = Tweet.find(params[:id])
    #   if tweet.user_id == current_user.id then
    #      tweet.destroy
    #   end
    # end

    # def update
    #   tweet = Tweet.find(params[:id])
    #   if tweet.user_id == current_user.id then
    #      tweet.update(tweet_params)
    # end
  # end



    # private
    # def tweet_params
    #   params.permit(:image, :text)
    # end

    # def move_to_index
    #   unless user_signed_in?
    #     redirect_to action: :index
    #   end
    # end

end
