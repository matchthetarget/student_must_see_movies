json.extract! review, :id, :movie_id, :user_id, :body, :rating, :created_at,
              :updated_at
json.url review_url(review, format: :json)
