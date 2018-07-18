module PostsHelper
  # Retourne vrai si c'est l'utilisateur actuel
  def is_current_user?(user)
    user == current_user
  end
end
