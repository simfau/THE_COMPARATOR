class CreateComparisons < ActiveRecord::Migration[7.1]
  def change
    create_table :comparisons do |t|
      t.references :content_a, null: false, foreign_key: { to_table: 'contents' }
      t.references :content_b, null: false, foreign_key: { to_table: 'contents' }
      t.references :user, null: false, foreign_key: true
      t.text :ai_result

      t.timestamps
    end
  end
end
