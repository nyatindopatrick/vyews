require "rails_helper"

RSpec.describe Post, type: :model do
  context "associations" do
    it { should belong_to(:author).class_name(:User) }
  end
end
