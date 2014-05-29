class CreateBienvenidos < ActiveRecord::Migration
  def change
    create_table :bienvenidos do |t|
      t.string :index

      t.timestamps
    end
  end
end
