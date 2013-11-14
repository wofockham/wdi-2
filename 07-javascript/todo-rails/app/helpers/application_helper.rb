module ApplicationHelper
  def user_nav
    if @current_user.present?
      link_to("Logout #{@current_user.email}", login_path, :method => 'delete')
    else
      link_to('Login', login_path)
    end
  end
end
