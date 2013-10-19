class AddTicketIdToReview < ActiveRecord::Migration
  def change
    add_reference :reviews, :ticket, index: true
  end
end
