class CreateGuests < ActiveRecord::Migration[5.1]
  def change
    create_table :guests do |t|
      t.string :name
      t.string :age
      t.string :heard
      t.text :purpose
      t.text :church
      t.string :whereseated
      t.string :hostconnected
      t.text :description
      t.text :actionplan, default: 'To be decided'

      t.timestamps
    end
  end
end
