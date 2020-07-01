require "rails_helper"

RSpec.describe User, type: :model do
  context "associations" do
    it { should have_many(:posts) }
    it { should have_many(:follows) }
    it { should have_many(:follower_user).class_name(:Follow) }
    it { should have_many(:followers) }
    it { should have_many(:following_user).class_name(:Follow) }
    it { should have_many(:following) }
    it { should have_many(:votes) }
  end

  context "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:username) }
  end
end
