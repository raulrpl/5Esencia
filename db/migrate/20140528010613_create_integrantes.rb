class CreateIntegrantes < ActiveRecord::Migration
  def change
    create_table :integrantes do |t|
      t.string :nombre
      t.string :email
      t.string :instrumento

      t.timestamps
    end
  end
end
