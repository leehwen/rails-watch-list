class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, uniqueness: { scope: :list, message: "Movie has already been added to list."}
  validates :comment, length: { minimum: 10 }
end
