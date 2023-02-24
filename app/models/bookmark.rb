class Bookmark < ApplicationRecord
  validates :movie_id, uniqueness: { scope: :list_id }
  validates :comment, length: { minimum: 6 }, allow_blank: true

  belongs_to :list
  belongs_to :movie
end
