class User < ActiveRecord::Base
  has_many :reviews
  has_many :bands, through: :reviews
  has_many :tickets

  has_attached_file :avatar, styles: { medium: '300x300#', thumb: '100x100#' }, default_url: '/images/user-:style.png'

  validates :screen_name, presence: true, uniqueness: true

  scope :latest, -> { order('id DESC') }
end
