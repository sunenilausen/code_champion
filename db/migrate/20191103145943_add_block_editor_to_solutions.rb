class AddBlockEditorToSolutions < ActiveRecord::Migration[5.2]
  def change
    add_column :solutions, :block_editor, :boolean, default: false
  end
end
