class BookmarkResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :movie_id, :integer
  attribute :user_id, :integer

  # Direct associations

  belongs_to :user

  belongs_to :movie

  # Indirect associations
end
