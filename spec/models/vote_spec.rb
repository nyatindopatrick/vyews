require 'rails_helper'

RSpec.describe Vote, type: :model do
  context 'associations' do
    it { should belong_to(:voter).class_name(:User) }
    it { should belong_to(:post).class_name(:Post) }
  end

  context 'validations' do
    it { should validate_presence_of(:voter_id) }
    it { should validate_presence_of(:post_id) }
  end
end
