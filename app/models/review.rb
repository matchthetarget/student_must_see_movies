class Review < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :movie

  # Indirect associations

  # Validations

  validates :body, presence: true

  validates :rating,
            numericality: { less_than_or_equal_to: 5,
                            greater_than_or_equal_to: 0 }

  # Scopes

  def to_s
    body
  end
end
