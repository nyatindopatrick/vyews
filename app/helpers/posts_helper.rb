module PostsHelper
  def new_vyews(post)
    posts = post.select { |p| p.created_at.to_date == Date.current }.size
    if posts == 1
      '1 new vyew'
    else
      "#{posts} new vyews"
    end
  end

  def like(post)
    p ENV['CLOUD_NAME']
    user = post.voted.detect { |u| u.voter_id == current_user.id }
    if user
      link_to '', post_vote_path(post, user, voted: true), method: :delete, class: 'like-link fas fa-thumbs-up liked'
    else
      link_to '', post_votes_path(post, voted: true), method: :post, class: 'like-link fas fa-thumbs-up'
    end
  end

  def dislike(post)
    user = post.unvoted.detect { |u| u.voter_id == current_user.id }
    if user
      link_to '', post_vote_path(post, user, voted: false), method: :delete,
                                                            class: 'like-link fas fa-thumbs-down disliked'
    else
      link_to '', post_votes_path(post, voted: false), method: :post, class: 'like-link fas fa-thumbs-down'
    end
  end
end
