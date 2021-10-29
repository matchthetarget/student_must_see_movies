require "rails_helper"

RSpec.describe User, type: :model do
  describe "Direct Associations" do
    it { should have_many(:bookmarks) }

    it { should have_many(:reviews) }
  end

  describe "InDirect Associations" do
    it { should have_many(:reviewed_movies) }

    it { should have_many(:bookmarked_movies) }
  end

  describe "Validations" do
    it { should validate_uniqueness_of(:username) }

    it { should validate_presence_of(:username) }
  end
end
