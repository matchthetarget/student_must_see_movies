class Character < ApplicationRecord
  # Direct associations

  belongs_to :actor,
             counter_cache: :roles_count

  belongs_to :movie,
             counter_cache: :roles_count

  # Indirect associations

  # Validations

  validates :actor_id, presence: true

  validates :movie_id, presence: true

  validates :name, presence: true

  # Scopes

  def to_s
    name
  end
end
