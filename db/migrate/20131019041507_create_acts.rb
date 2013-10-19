class CreateActs < ActiveRecord::Migration
  def change
    create_table :acts do |t|
      t.references :band, index: true
      t.references :review, index: true
      t.integer :position

      t.timestamps
    end
  end
end
