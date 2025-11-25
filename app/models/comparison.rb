class Comparison < ApplicationRecord
  belongs_to :content_a, class_name: 'Content'
  belongs_to :content_b, class_name: 'Content'
  belongs_to :user
end
