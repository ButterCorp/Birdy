module UsersHelper

  # Gravatar documentation pour référence
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.username, class: "gravatar img-fluid img-responsive")
  end
  # Retourne vrai si c'est l'utilisateur actuel
  def is_current_user?(user)
    user == current_user
  end
end