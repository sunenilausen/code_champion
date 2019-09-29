class CreateEvalServers < ActiveRecord::Migration[5.2]
  def change
    create_table :eval_servers do |t|
      t.string :ip_address
      t.string :port
      t.integer :language, default: 0
      t.integer :status, default: 0
      t.integer :response_time
      t.datetime :last_response

      t.timestamps
    end
  end
end
