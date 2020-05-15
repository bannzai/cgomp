require 'nokogiri'

class Parser
  def initialize(html)
    @html = html
  end
  def parse 
    titles = document.xpath('//h2/following-sibling::p/text()')
    bodies = document.xpath('//body/pre/code[@class="json"]')
    puts bodies.count
    titleAndJSON = {}
    titles.map(&:text).select { |t| !t.include?("details") }.each_with_index do |title, index|
      titleAndJSON[title] = bodies[index]&.inner_text
    end
    titleAndJSON
  end
  def document 
    @document ||= Nokogiri::HTML(@html)
  end
end
