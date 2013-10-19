class Band < ActiveRecord::Base
  has_many :acts
  has_many :reviews, through: :acts

  has_attached_file :avatar, styles: { medium: '300x300#', thumb: '100x100#' },
    default_url: ActionController::Base.helpers.asset_path('band-:style.png')
end
