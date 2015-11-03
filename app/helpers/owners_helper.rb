module OwnersHelper

  def owner_email(owner)
    owner.email.upcase
  end

end
