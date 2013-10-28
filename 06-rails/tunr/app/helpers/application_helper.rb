module ApplicationHelper
  def authentication_menu
    # Build a list of links depending on the user's permissions.
    links = ""
    if @authenticated.present?
      if @authenticated.is_admin
        links += "<li>#{link_to("Show Users", users_path)}</li>"
      end
      links += "<li>#{ link_to('Edit Profile', edit_users_path )}</li>"
      links += "<li>#{ link_to('Logout ' + @authenticated.name, login_path, :method => 'delete',
                      :confirm => 'Are you sure?') }</li>"
    else
      links += "<li>#{ link_to('Login', login_path) }</li>"
    end

    links
  end
end
