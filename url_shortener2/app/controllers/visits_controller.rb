class VisitsController < ApplicationController
  def show
    short_url = ShortUrl.where(short_url: params[:short_url]).take
    redirect_to short_url.long_url
  end
end
