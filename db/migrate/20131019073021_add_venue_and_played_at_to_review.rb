class AddVenueAndPlayedAtToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :venue, :string
    add_column :reviews, :played_at, :date
  end
end
