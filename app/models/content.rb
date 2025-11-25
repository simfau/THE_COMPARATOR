class Content < ApplicationRecord
  has_many :comparisons, dependent: :destroy

  enum format: [ :song , :movie ]
end
