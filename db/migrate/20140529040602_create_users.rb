class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :password
      t.string :direccion
      t.string :email

      t.timestamps
    end
  end
end
