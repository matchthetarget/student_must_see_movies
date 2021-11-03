class User < ApplicationRecord
  include JwtToken
  # Direct associations

  has_many   :bookmarks,
             foreign_key: "bookmarker_id",
             dependent: :destroy

  has_many   :reviews,
             dependent: :destroy

  # Indirect associations

  has_many   :reviewed_movies,
             through: :reviews,
             source: :movie

  has_many   :bookmarked_movies,
             through: :bookmarks,
             source: :movie

  # Validations

  validates :username, uniqueness: true

  validates :username, presence: true

  # Scopes

  def to_s
    username
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def recommended_movies
    other_users = User.where.not(id: self.id)
    with_bookmarked_movies = other_users.joins(:bookmarked_movies)
    users_with_my_bookmarks = with_bookmarked_movies.where( movies: { id: bookmarked_movies.ids }).limit(3)
    # users_with_my_bookmarks.where.not(movies: {id: bookmarked_movies.ids })
    m = []
    users_with_my_bookmarks.each do |u|
      m.concat(u.bookmarked_movies.where.not(id: bookmarked_movies.ids ))
    end
    m
  end
end
