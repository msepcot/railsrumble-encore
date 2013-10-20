class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.references :source, polymorphic: true, index: true
      t.string :title
      t.string :link
      t.attachment :image

      t.timestamps
    end
  end
end
