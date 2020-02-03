module ApplicationHelper
  def title_bar(page_title='')
    title = 'BOOK YOUR MOVIE'
    if page_title.empty?
      title
    else
      page_title + ' | ' + title
    end
  end
end
