module ApplicationHelper
  def modal_close
    content_tag(:div, inline_svg('close.svg', class: 'fill-grey'), 'data-behavior': 'modal_close', class: 'modal__close')
  end

  def modal_header(text)
    html = modal_close
    html << content_tag(:h2, text, class: 'mtn tl')
    html << tag(:hr)
    html
  end
end
