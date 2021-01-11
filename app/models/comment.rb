class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :coordination

  validates :text,       presence: true
end
