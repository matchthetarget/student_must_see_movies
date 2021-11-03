class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :bookmarker, class_name: "User"

  belongs_to :movie

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    movie.to_s
  end
end
