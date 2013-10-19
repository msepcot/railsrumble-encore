class User < ActiveRecord::Base
  has_many :reviews
  has_many :bands, through: :reviews

  has_attached_file :avatar, styles: { medium: '300x300#', thumb: '100x100#' },
    default_url: '/assets/user-:style.png'

  validates :screen_name, uniqueness: true

  scope :latest, -> { order('id DESC') }
end
