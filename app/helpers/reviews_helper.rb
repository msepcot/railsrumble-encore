module ReviewsHelper

  def paragraphs(content)
    content.split(/\r?\n/).reject(&:blank?).map { |p| content_tag(:p, h(p)) }.join.html_safe
  end

end
