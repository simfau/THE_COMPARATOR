class AddCreatorToContents < ActiveRecord::Migration[7.1]
  def change
    add_column :contents, :creator, :string
  end
end
