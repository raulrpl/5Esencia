class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :email
      t.text :direccion
      t.string :telefono

      t.timestamps
    end
  end
end
