module ApplicationHelper

  def gravatar_image_url(email, gravatar_overrides = {})
    email = email.strip.downcase if email.is_a? String
    GravatarImageTag::gravatar_url(email, gravatar_overrides)
  end

end
