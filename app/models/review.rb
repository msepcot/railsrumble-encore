class Review < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true
  validates :rating, inclusion: { in: 1..5 }
  validates :user, presence: true
  validates :played_at, presence: true

  scope :latest, -> { order('id DESC') }
end
