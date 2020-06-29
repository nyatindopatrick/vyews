class Register
  include Capybara::DSL

  def visit_page(path)
    visit(path)
    self
  end

  def sign_up(user)
    fill_in "user[name]",	with: user.name
    fill_in "user[username]",	with: user.username
    fill_in "user[email]",	with: user.email

    click_on('Register')
    self
  end
end
