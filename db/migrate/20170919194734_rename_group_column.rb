class RenameGroupColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :groups, :type, :category
  end
end
