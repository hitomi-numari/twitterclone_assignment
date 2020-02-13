class TweetmesController < ApplicationController
  def index
    @tweetmes = Tweetme.all
  end
end
