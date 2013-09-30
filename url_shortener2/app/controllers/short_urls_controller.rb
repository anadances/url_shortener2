class ShortUrlsController < ApplicationController

  def new
    @short_url = ShortUrl.new
  end

  def create
    @short_url = ShortUrl.create(url_params)
    if @short_url.save
      flash[:notice] = "Here is a shorter URL"
      redirect_to short_url_path(@short_url)
    else
      render :new
    end
  end

  def show
    @short_url = ShortUrl.find(params[:id])
  end

  private
    def url_params
      params.require(:short_url).permit(:long_url)
    end
end