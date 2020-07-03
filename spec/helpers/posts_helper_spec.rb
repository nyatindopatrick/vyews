require 'rails_helper'

RSpec.describe PostsHelper, type: :helper do
  before(:each) do
    Post.new(content: 'this idea', author_id: 1).save
    Post.new(content: 'this ideas', author_id: 1).save
    Post.new(content: 'this ideals', author_id: 1).save
  end

  context 'new vyews helper' do
    it 'should return 3' do
      p Post.new(content: 'this idea', author_id: 1).save
      post = Post.all
      expect(new_vyews(post)).to eq(3)
    end
  end
end
