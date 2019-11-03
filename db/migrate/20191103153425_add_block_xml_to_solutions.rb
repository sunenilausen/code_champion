class AddBlockXmlToSolutions < ActiveRecord::Migration[5.2]
  def change
    add_column :solutions, :block_xml, :text
  end
end
