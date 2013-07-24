module ApplicationHelper
  def full_title(page_title)
    return '' if page_title.empty?
    " | #{page_title}"
  end
end
