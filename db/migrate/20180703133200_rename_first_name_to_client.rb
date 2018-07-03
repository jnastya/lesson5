class RenameFirstNameToClient < ActiveRecord::Migration[5.1]
  def change
      rename_column :clients, :name, :first_name
  end
end
