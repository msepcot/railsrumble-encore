class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.references :user, index: true
      t.references :review, index: true
      t.string :event_code
      t.string :section
      t.string :row
      t.string :seat
      t.attachment :stub

      t.timestamps
    end
  end
end
