require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:user) { User.new(name: 'Pato', username: 'pato', email: 'pato@gmail.com') }
  let(:post) { Post.new(author_id: user.id, content: 'it is what it is') }
  let(:vote) { Vote.new(voter_id: user.id, post_id: post.id, voted: true) }
  let(:unvote) { Vote.new(voter_id: user.id, post_id: post.id, voted: false) }
  context 'associations' do
    it { should belong_to(:author).class_name(:User) }
    it { should have_many(:votes) }
  end

  context 'validations' do
    it { should validate_presence_of(:content) }
  end

  context 'Methods' do
    it 'returns 1 voted posts' do
      user.save
      post.save
      vote.save
      expect(post.votes.size).to eq 1
    end

    it 'returns 1 unvoted posts' do
      user.save
      post.save
      unvote.save
      expect(post.votes.size).to eq 1
    end
  end
end
