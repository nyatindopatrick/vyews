module PostsHelper
  def new_vyews(post)
    posts = post.select { |p| p.created_at.to_date == Date.current }.size
    if posts == 1
      "1 new vyew"
    else
      "#{posts} new vyews"
    end
  end
end
