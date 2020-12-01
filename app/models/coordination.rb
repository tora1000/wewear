class Coordination < ApplicationRecord
  belongs_to :user
  has_many   :comments
  has_one_attached :image

  with_options presence: true do
    validates :title, :description, :favorite_item, :use, :image
  end
end
