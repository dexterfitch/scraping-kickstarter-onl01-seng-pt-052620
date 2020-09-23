require 'nokogiri'
require 'pry'

def create_project_hash
  raw = File.read('fixtures/kickstarter.html')
  html = Nokogiri::HTML(raw)
  projects_html = html.css(".project-card")
  projects = {}

  projects_html.each { |project|

  }
  #title: NANINANI.css('.bbcard_name a').text.strip
  #img: NANINANI.css('.project-thumbnail img').attr('src').value
  #desc: NANINANI.css('.bbcard_blurb').text.strip
  #loc: NANINANI.css('.location-name').text.strip
  # per: NANINANI.css('.funded strong').text.strip
  binding.pry
end

create_project_hash
