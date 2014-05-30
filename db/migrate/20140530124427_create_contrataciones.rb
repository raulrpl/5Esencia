class CreateContrataciones < ActiveRecord::Migration
  def change
    create_table :contrataciones do |t|
      t.string :evento
      t.text :lugar
      t.date :fecha

      t.timestamps
    end
  end
end
