module UsersHelper

    # Provide a page title with optional descriminator
  def users_title(descriminator)
    if descriminator.nil? || descriminator.empty?
      "iso-yd | User Page"
    else
      "iso-yd | #{descriminator}"
    end
  end

end
