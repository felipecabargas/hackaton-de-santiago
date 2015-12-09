class CreateFundations < ActiveRecord::Migration
  def change
    create_table :fundations do |t|
      t.string :name
      t.string :website
      t.string :country
      t.integer :age

      t.timestamps null: false
    end
  end
end
