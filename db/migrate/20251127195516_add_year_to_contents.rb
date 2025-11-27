class AddYearToContents < ActiveRecord::Migration[7.1]
  def change
    add_column :contents, :year, :integer
  end
end
