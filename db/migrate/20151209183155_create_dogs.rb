class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.references :fundation, index: true, foreign_key: true
      t.string :name
      t.integer :age
      t.string :breed

      t.timestamps null: false
    end
  end
end
