require "rails_helper"

RSpec.describe Review, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:user) }

    it { should belong_to(:movie) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
    it { should validate_presence_of(:body) }

    it {
      should validate_numericality_of(:rating).is_less_than(5).is_greater_than_or_equal_to(0)
    }
  end
end
