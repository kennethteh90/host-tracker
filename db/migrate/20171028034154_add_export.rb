class AddExport < ActiveRecord::Migration[5.1]
  def change
    add_column :guests, :to_export, :boolean, default: true
  end
end
