class CreateContents < ActiveRecord::Migration[7.1]
  def change
    create_table :contents do |t|
      t.integer :format
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
