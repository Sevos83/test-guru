module ApplicationHelper
  def current_year
    Time.current.year
  end

  def github_url(author, repo)
    link_to(project_name, "http://github.com/#{author}/#{repo}")
  end
end
