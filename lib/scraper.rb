require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper

  def get_page
    html = open('http://learn-co-curriculum.github.io/site-for-scraping/courses')
    doc = Nokogiri::HTML(html)

    binding.pry
  end

  def get_courses
    doc.css(".post").first.css("h2").text
    doc.css(".post").first.css(".date").text
    doc.css(".post").first.css("p").text
  end

  def make_courses

  end

    def print_courses
      self.make_courses
      Course.all.each do |course|
        if course.title
          puts "Title: #{course.title}"
          puts "  Schedule: #{course.schedule}"
          puts "  Description: #{course.description}"
        end
      end
    end

end
Scraper.new.get_page
