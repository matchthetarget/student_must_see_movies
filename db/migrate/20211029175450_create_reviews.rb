class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :movie_id
      t.integer :user_id
      t.text :body
      t.integer :rating

      t.timestamps
    end
  end
end
