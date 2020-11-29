class Coordination < ApplicationRecord
  belongs_to :user
  has_many   :comments
  has_one_attached :image

  with_options presence: true do
    validates :title, :description, :recommended_point, :favorite_item, :use, :image
  end
end
