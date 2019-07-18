class CreateSolutions < ActiveRecord::Migration[5.2]
  def change
    create_table :solutions do |t|
      t.references :problem, foreign_key: true
      t.references :user, foreign_key: true
      t.text :code

      t.timestamps
    end
  end
end
