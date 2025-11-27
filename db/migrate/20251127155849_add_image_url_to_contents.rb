class AddImageUrlToContents < ActiveRecord::Migration[7.1]
  def change
    add_column :contents, :image_url, :string
  end
end
