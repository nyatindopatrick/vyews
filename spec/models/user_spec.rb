require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new(name: 'Pato', username: 'pato', email: 'pato@gmail.com') }
  let(:user2) { User.new(name: 'Pato2', username: 'pato2', email: 'pato2@gmail.com') }

  context 'associations' do
    it { should have_many(:posts) }
    it { should have_many(:follows) }
    it { should have_many(:follower_user).class_name(:Follow) }
    it { should have_many(:followers) }
    it { should have_many(:following_user).class_name(:Follow) }
    it { should have_many(:following) }
    it { should have_many(:votes) }
  end

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:username) }
  end

  context 'Methods' do
    it 'should return false' do
      user.save
      user2.save
      expect(user.following?(user2)).to be false
    end
  end
end
