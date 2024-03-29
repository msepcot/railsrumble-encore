class Band < ActiveRecord::Base
  has_many :reviews

  has_attached_file :avatar, styles: { medium: '300x300#', thumb: '100x100#' }, default_url: '/images/band-:style.png'

  validates :name, presence: true, uniqueness: true

  scope :latest, -> { order('id DESC') }
end
