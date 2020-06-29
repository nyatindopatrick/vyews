require "rails_helper"
require_relative "../support/register"

feature "User Registration" do
  let(:user) { User.new(name: "Patrick Nyatindo", username: "pato", email: "pato@gmail.com") }
  let(:fail) { User.new(name: "Marios", username: "marios") }
  let(:registration) { Register.new }

  scenario "Redirect to posts page on successful signup" do
    registration.visit_page("/users/new").sign_up(user)
    expect(page.current_path).to eq "/posts"
  end

  scenario "Redirect to users page on fail" do
    registration.visit_page("/users/new").sign_up(fail)
    expect(page.current_path).to eq "/users"
  end
end
