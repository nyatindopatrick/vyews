module UsersHelper
  def followerss(users)
    users.select { |u| u.followers.map(&:id).include?(current_user.id) }
  end

  def background_update(user)
    render 'users/imageform' if user == current_user
  end
end
