class Media < ActiveRecord::Base
  belongs_to :source, polymorphic: true

  has_attached_file :image, styles: { medium: '300x300#', thumb: '100x100#' }, default_url: '/images/media-:style.png'

  validates :image, presence: true, unless: ->(m) { m.youtube? }
  validates :source, presence: true
  validates :title, presence: true

  def lightbox_link
    youtube? ? link : image.url(:original)
  end

  def youtube?
    link =~ /youtube/
  end

end
