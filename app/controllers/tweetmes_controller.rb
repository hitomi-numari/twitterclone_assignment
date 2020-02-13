class TweetmesController < ApplicationController
  
  def index
    @tweetmes = Tweetme.all
  end

  def new
    @tweetme = Tweetme.new
  end

  def create
    @tweetme = Tweetme.new(tweetme_params)

    if params[:back]
          render :new
    else
      if @tweetme.save
        redirect_to tweetmes_path, notice: "New tweet has created！"
      else
        render 'new'
      end
    end
  end

private

  def tweetme_params
    params.require(:tweetme).permit(:content)
  end
end
