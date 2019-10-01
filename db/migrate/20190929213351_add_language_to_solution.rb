class AddLanguageToSolution < ActiveRecord::Migration[5.2]
  def change
    add_column :solutions, :language, :integer, default: 0
  end
end
