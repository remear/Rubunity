module ApplicationHelper
  def flash_messages
    output = ''
    [:notice, :warning, :success, :error].map { |f|
      if flash[f]
        output << "<div id=\"flash\" class=\"#{f}\">"
        output << '   <div id="icon"></div>'
        output << "   <div id=\"message\"><h2>#{f.to_s.titleize}!</h2>#{flash[f]}</div>"
        output << " <br />"
        output << '</div>'
        output << content_tag(:script, "fadeThenSlideToggle()")
      end
    }
    return output.html_safe
  end
end
