class AddBandIdToReview < ActiveRecord::Migration
  def change
    add_reference :reviews, :band, index: true
  end
end
