class Review < ActiveRecord::Base
  belongs_to :band
  belongs_to :user
  has_one :ticket

  validates :title, presence: true
  validates :content, presence: true
  validates :rating, inclusion: { in: 1..5 }
  validates :user, presence: true
  validates :played_at, presence: true

  accepts_nested_attributes_for :ticket

  scope :latest, -> { order('id DESC') }
end
