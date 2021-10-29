class Actor < ApplicationRecord
  # Direct associations

  has_many   :roles,
             class_name: "Character",
             dependent: :destroy

  # Indirect associations

  has_many   :filmography,
             through: :roles,
             source: :movie

  # Validations

  validates :name, presence: true

  # Scopes

  def to_s
    name
  end
end
