module SvgHelper
  def inline_svg(filename, options = {})
    file = File.read(Rails.root.join('app', 'assets', 'images', filename))
    doc = Nokogiri::HTML::DocumentFragment.parse file
    svg = doc.at_css 'svg'
    options[:style] = options[:style] || ''
    if options[:size]
      options[:width] = options[:size]
      options[:height] = options[:size]
      options.delete :size
    end
    if options[:fill]
      options[:style] += "fill: ##{options[:fill].to_s};"
      options.delete :fill
    end
    options.each { |key, value| svg["#{key}"] = value }
    doc.to_html.html_safe
  end
end
