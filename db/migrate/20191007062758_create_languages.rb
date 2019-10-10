class CreateLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :languages do |t|
      t.string :name
      t.string :version

      t.timestamps
    end
    add_reference :solutions, :language, index: true
    add_reference :eval_servers, :language, index: true
  end
end
