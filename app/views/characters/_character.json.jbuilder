json.extract! character, :id, :movie_id, :actor_id, :name, :created_at,
              :updated_at
json.url character_url(character, format: :json)
