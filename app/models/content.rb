class Content < ApplicationRecord
  has_many :a_comparisons, class_name: 'Comparison', dependent: :destroy, foreign_key: :content_a_id
  has_many :b_comparisons, class_name: 'Comparison', dependent: :destroy, foreign_key: :content_b_id

  enum format: [ :song , :movie ]
end
