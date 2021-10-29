class Director < ApplicationRecord
  # Direct associations

  has_many   :filmography,
             class_name: "Movie",
             dependent: :nullify

  # Indirect associations

  # Validations

  validates :name, presence: true

  # Scopes

  def to_s
    name
  end
end
