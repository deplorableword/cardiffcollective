module ApplicationHelper

  def gravatar_image_url(email, gravatar_overrides = {})
    email = email.strip.downcase if email.is_a? String
    GravatarImageTag::gravatar_url(email, gravatar_overrides)
  end

  def title
    user_count = User.count - 2
    "Cardiff Collective | Connect with over #{ user_count } startup owners and entrepreneurs in Cardiff"
  end

end
