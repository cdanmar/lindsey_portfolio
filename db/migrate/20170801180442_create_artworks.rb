class CreateArtworks < ActiveRecord::Migration[5.1]
  def change
    create_table :artworks do |t|
      t.string :title
      t.date :created
      t.string :media_type
      t.attachment :image
      t.text :description

      t.timestamps
    end
  end
end
