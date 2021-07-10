class CommentsController < ApplicationController

    def index
        tweet = Tweet.find(params[:tweet_id])
        comments = tweet.comments
        render json: comments
    end 

    def create 
    end

    def update 
    end 

    def destroy
    end 

    private 

    def comments_params 
        params.require(:comments).permit(:reply, :tweet_id)
    end 
end 