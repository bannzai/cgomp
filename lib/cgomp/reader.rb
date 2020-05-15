require 'redcarpet'

class Reader
  def initialize(filepath)
    @filepath = filepath
  end

  def read 
    renderer = Redcarpet::Render::HTML.new(render_options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)
    markdown.render(content)
  end

  def content
    File.read(@filepath)
  end
  def extensions
    {
      fenced_code_blocks: true
    }
  end
  def render_options
    {
      escape_html: true
    }
  end
end
