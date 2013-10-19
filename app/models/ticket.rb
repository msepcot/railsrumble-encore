class Ticket < ActiveRecord::Base
  belongs_to :user
  belongs_to :review

  has_attached_file :stub, styles: { medium: '300x100#', thumb: '100x33#' }, default_url: '/images/ticket-:style.png'
end
