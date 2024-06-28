module ApplicationHelper
  def render_icon(icon, classes: nil)
    classes ||= ""
    render "icons/#{icon}", classes: classes
  end

  def is_documentation_path
    controller_name == 'help' && action_name == 'index'
  end

  def is_changelog_path
    controller_name == 'help' && action_name == 'changelog'
  end

  def is_components_path
    controller_name == 'components' && action_name == 'index'
  end
end
