module ApplicationHelper
  def nav_link_active?(controller, action, controller_name, action_name)
    'active' if controller == controller_name && action == action_name
  end
end
