module ApplicationHelper
  def background_update(user)
    render "users/imageform" if user == current_user
  end
end
