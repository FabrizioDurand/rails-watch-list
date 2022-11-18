class List < ApplicationRecord
  validates :name, uniqueness: true
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, presence: true
  has_one_attached :photo
end

# A list must have a unique name.
