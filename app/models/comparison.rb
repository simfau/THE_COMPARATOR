class Comparison < ApplicationRecord
  belongs_to :content_a, class_name: 'Content'
  belongs_to :content_b, class_name: 'Content'
  belongs_to :user

  def generate_title
    "#{content_a.title} vs. #{content_b.title}"
  end
end
