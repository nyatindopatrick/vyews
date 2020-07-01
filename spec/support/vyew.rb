class Vyew
  include Capybara::DSL

  def visit_page(path)
    visit(path)
    self
  end

  def post_vyew(content)
    fill_in "content", with: content
    click_on("Save")
    self
  end
end
