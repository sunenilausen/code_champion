class RemoveLanguageEnumFromEvalServers < ActiveRecord::Migration[5.2]
  def change
    remove_column :eval_servers, :language
  end
end
