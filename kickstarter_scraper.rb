require 'nokogiri'
require 'pry'

def create_project_hash
  raw = File.read('fixtures/kickstarter.html')
  html = Nokogiri::HTML(raw)
  projects = html.css(".project-card")
  #title: NANINANI.css('.bbcard_name a').text.strip
  #img: NANINANI.css('.project-thumbnail img').attr('src').value
  #desc: NANINANI.css('.bbcard_blurb').text.strip
  binding.pry
end

create_project_hash
