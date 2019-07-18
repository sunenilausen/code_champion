class CreateTestCases < ActiveRecord::Migration[5.2]
  def change
    create_table :test_cases do |t|
      t.references :problem, foreign_key: true
      t.json :input
      t.json :output

      t.timestamps
    end
  end
end
