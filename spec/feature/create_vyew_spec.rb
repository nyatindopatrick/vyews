require 'rails_helper'
require_relative '../support/register'
require_relative '../support/vyew'

feature 'Create Vyew' do
  let(:user) { User.new(name: 'Patrick Nyatindo', username: 'pato', email: 'pato@gmail.com') }
  let(:registration) { Register.new }
  let(:vyew) { Vyew.new }

  before(:each) do
    registration.visit_page('/users/new').sign_up(user)
  end

  scenario 'Post a new Vyew' do
    vyew.visit_page('posts').post_vyew('This is a very nice idea')
    expect(page).to have_content 'nice'
  end
end
