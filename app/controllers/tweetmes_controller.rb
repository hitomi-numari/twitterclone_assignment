class TweetmesController < ApplicationController
  before_action :set_tweetme, only: [:show, :edit, :update, :destroy]

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
        redirect_to tweetmes_path, success: "New tweet has created！"
      else
      　render 'new'
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    if @tweetme.update(tweetme_params)
      redirect_to tweetmes_path, success: "Tweet has been edited！"
    else
      render :edit
    end
  end

  def destroy
    @tweetme.destroy
    redirect_to tweetmes_path, success:"The tweet has been deleted！"
  end

  def confirm
    @tweetme = Tweetme.new(tweetme_params)
    render :new if @tweetme.invalid?
  end

  private

  def tweetme_params
    params.require(:tweetme).permit(:content)
  end

  def set_tweetme
    @tweetme = Tweetme.find(params[:id])
  end
end
