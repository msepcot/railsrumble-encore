class BandsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
    @band = Band.new(band_params)

    @band.save ? redirect_to(@band) : render(:new)
  end

  def edit
    render :new
  end

  def update
    band.update_attributes(band_params) ? redirect_to(band) : render(:edit)
  end

private

  def reviews
    band.reviews.page(params[:page]).per(5)
  end
  helper_method :reviews

  def band_params
    params.require(:band).permit(:name, :twitter, :web, :avatar)
  end

  def band
    @band ||= params[:id].present? ? Band.find(params[:id]) : Band.new
  end
  helper_method :band

  def bands
    @bands ||= Band.latest.page(params[:page])
  end
  helper_method :bands

end
