class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.string :twitter
      t.string :web

      t.timestamps
    end
  end
end
