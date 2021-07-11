class CommentsController < ApplicationController

    def index
        tweet = Tweet.find(params[:tweet_id])
        comments = tweet.comments
        render json: comments
    end 

    def create 
        comment = Comment.new(comment_params)
        if comment.save 
            render json: comment 
        end 
    end

    def update 
    end 

    def destroy
    end 

    private 

    def comment_params 
        params.require(:comment).permit(:reply, :tweet_id)
    end 
end 