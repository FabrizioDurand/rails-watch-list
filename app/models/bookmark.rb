class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates_uniqueness_of :movie, scope: [:list]
  validates :comment, length: { minimum: 6 }

  # validates :name, uniqueness: { scope: :year,
  #   message: "should happen once per year" }
end

# A bookmark must be linked to a movie and a list, and the [movie, list] pairings should be unique.
# The comment of a bookmark cannot be shorter than 6 characters.
