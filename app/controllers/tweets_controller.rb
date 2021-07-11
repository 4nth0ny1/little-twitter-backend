class TweetsController < ApplicationController

    def index 
        tweets = Tweet.all
        render json: tweets
    end 

    def show  
        tweet = Tweet.find(params[:id])
        render json: tweet
    end 

    def create
        tweet = Tweet.new(tweet_params)
        if tweet.save
            render json: tweet
        end 
    end 

    def update
    end 

    def destroy
        tweet = Tweet.find(params[:id])
        tweet.destroy

        head :ok
    end 

    private 

    def tweet_params
        params.require(:tweet).permit(:content)
    end 

end
