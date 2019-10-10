class RemoveLanguageEnumFromSolutions < ActiveRecord::Migration[5.2]
  def change
    remove_column :solutions, :language
  end
end
