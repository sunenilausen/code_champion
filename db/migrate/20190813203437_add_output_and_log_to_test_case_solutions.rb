class AddOutputAndLogToTestCaseSolutions < ActiveRecord::Migration[5.2]
  def change
    add_column :test_case_solutions, :output, :string
    add_column :test_case_solutions, :log, :text
  end
end
