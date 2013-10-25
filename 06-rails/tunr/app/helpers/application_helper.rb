module ApplicationHelper
  def authentication_menu
    if @authenticated.present?
      "<li>#{ link_to('Edit Profile', edit_users_path )}</li>" +
      "<li>#{ link_to('Logout ' + @authenticated.name, login_path, :method => 'delete',
                      :confirm => 'Are you sure?') }</li>"
    else
      "<li>#{ link_to('Login', login_path) }</li>"
    end
  end
end
