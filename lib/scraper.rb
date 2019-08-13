require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)
course = doc.css(".title-oE5vT4")

course.each do |course|
  puts course.text.strip
  end