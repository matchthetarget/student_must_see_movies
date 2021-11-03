class ActorResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :dob, :string
  attribute :bio, :string
  attribute :image, :string

  # Direct associations

  has_many   :roles,
             resource: CharacterResource

  # Indirect associations

  many_to_many :filmography,
               resource: MovieResource

  # Custom Filter to allow nil in dob column
  filter :dob, :allow_nil => true  do
    eq do |scope, value|
      scope.where(:dob => value)
    end
    not_eq do |scope, value|
      scope.where.not(:dob => value)
    end
  end
end
