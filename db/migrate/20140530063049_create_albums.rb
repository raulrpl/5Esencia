class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :cancion

      t.timestamps
    end
  end
end
