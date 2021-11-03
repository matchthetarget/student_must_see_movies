class BookmarkResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :movie_id, :integer
  attribute :bookmarker_id, :integer

  # Direct associations

  belongs_to :bookmarker, resource: UserResource

  belongs_to :movie

  # Indirect associations
end
