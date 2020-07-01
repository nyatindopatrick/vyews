module ApplicationHelper
  def background_update(use)
     use.id == current_user.id
  end
end
