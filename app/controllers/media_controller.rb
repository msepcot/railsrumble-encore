class MediaController < ApplicationController

  def new
  end

  def create
    @media = Media.new(media_params)
    @media.save ? redirect_to(media.source) : render(:new)
  end

  def edit
  end

  def update
    media.attributes = media_params
    media.save ? redirect_to(media.source) : render(:edit)
  end

private

  def media_params
    params.require(:media).permit(:source_id, :source_type, :title, :link, :image)
  end

  def media
    @media ||= params[:id].present? ? Media.find(params[:id]) : Media.new(params.permit(:source_id, :source_type))
  end
  helper_method :media

end
