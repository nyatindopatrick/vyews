require 'rails_helper'

RSpec.describe Follow, type: :model do
  context 'associations' do
    it { should belong_to(:follower).class_name(:User) }
    it { should belong_to(:following).class_name(:User) }
  end
end
