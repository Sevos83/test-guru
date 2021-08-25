module ApplicationHelper
  def current_year
    Date.current.year
  end

  def github_url(author, repo)
    link_to(project_name, "http://github.com/#{author}/#{repo}")
  end

  def flash_message(key)
    content_tag :p, flash[key], class: "flash #{key}" if flash[key]
  end
end
