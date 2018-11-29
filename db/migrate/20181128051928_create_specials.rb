class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.text :title
      t.integer :year
      t.integer :runtime
      t.integer :comedian_id
      t.text :image

      t.timestamps
    end
  end
end
