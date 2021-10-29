class MovieResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :title, :string
  attribute :year, :integer
  attribute :duration, :integer
  attribute :description, :string
  attribute :image, :string
  attribute :director_id, :integer

  # Direct associations

  belongs_to :director

  has_many   :bookmarks

  has_many   :reviews

  has_many   :roles,
             resource: CharacterResource

  # Indirect associations

  many_to_many :cast,
               resource: ActorResource

  many_to_many :reviewers,
               resource: UserResource

  many_to_many :bookmarkers,
               resource: UserResource
end
