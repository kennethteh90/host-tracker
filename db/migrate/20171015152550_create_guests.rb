class CreateGuests < ActiveRecord::Migration[5.1]
  def change
    create_table :guests do |t|
      t.string :name
      t.string :age
      t.text :description
      t.string :hostconnected
      t.string :whereseated
      t.text :actionplan, default: 'To be decided'

      t.timestamps
    end
  end
end
