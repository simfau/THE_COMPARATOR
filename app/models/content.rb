class Content < ApplicationRecord
  has_many :comparisons_as_a, class_name: 'Comparison', dependent: :destroy, foreign_key: :content_a_id
  has_many :comparisons_as_b, class_name: 'Comparison', dependent: :destroy, foreign_key: :content_b_id

  enum format: [ :song , :movie ]
end
