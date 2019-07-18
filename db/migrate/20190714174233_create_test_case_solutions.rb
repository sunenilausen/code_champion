class CreateTestCaseSolutions < ActiveRecord::Migration[5.2]
  def change
    create_table :test_case_solutions do |t|
      t.references :solution, foreign_key: true
      t.references :test_case, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
