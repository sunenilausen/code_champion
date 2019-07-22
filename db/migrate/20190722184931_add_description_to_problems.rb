class AddDescriptionToProblems < ActiveRecord::Migration[5.2]
  def change
    add_column :problems, :description, :text
  end
end
