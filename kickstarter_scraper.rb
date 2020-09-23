require 'nokogiri'
require 'pry'

def create_project_hash
  raw = File.read('fixtures/kickstarter.html')
  html = Nokogiri::HTML(raw)
  projects_html = html.css(".project-card")
  projects = {}

  projects_html.each { |project|
    title = project.css('.bbcard_name a').text
    projects[title.to_sym] = {
      :image_link => project.css('.project-thumbnail img').attr('src').value
      :desc => project.css('.bbcard_blurb').text
      :loc => project.css('.location-name').text
      :per => project.css('.funded strong').text
    }
  }
end

create_project_hash
