require 'nokogiri'
require 'pry'

def create_project_hash
  raw = File.read('fixtures/kickstarter.html')
  html = Nokogiri::HTML(raw)
end
