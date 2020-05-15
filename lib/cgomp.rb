require "cgomp/version"
require "cgomp/reader"
require "cgomp/parser"

module Cgomp
  class Error < StandardError; end
  # Your code goes here...
  def self.greet
    html = Reader.new("#{Dir.getwd}/testdata/test.md").read
    hash = Parser.new(html).parse
    hash
  end
end
