require 'kramdown'

class Reader
  def initialize(filepath)
    @filepath = filepath
  end

  def read 
    Kramdown::Document.new(content, {parse_block_html: true}).to_html
  end

  def content
    File.read(@filepath)
  end
end
