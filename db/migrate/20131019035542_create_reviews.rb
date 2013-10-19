class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :content
      t.integer :rating
      t.references :user, index: true

      t.timestamps
    end
  end
end
