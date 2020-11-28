class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :coordinations
  has_many :comments
  
  with_options presence: true do
    validates :nickname,:email,:sex_id
  end
end
