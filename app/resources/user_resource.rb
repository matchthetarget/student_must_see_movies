class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :email, :string
  attribute :password, :string
  attribute :username, :string

  # Direct associations

  has_many   :bookmarks

  has_many   :reviews

  # Indirect associations

  many_to_many :reviewed_movies,
               resource: MovieResource

  many_to_many :bookmarked_movies,
               resource: MovieResource
end
