class AddSslToEvalServers < ActiveRecord::Migration[5.2]
  def change
    add_column :eval_servers, :ssl, :boolean, default: true
  end
end
