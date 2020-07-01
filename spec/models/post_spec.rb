require "rails_helper"

RSpec.describe Post, type: :model do
  context "associations" do
    it { should belong_to(:author).class_name(:User) }
    it { should have_many(:votes) }
  end

  context "validations" do
    it { should validate_presence_of(:content) }
  end
end
