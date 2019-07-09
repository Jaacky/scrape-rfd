require 'open-uri'

class ScrapeController < ApplicationController
  def index
    doc = Nokogiri::HTML(open('https://forums.redflagdeals.com/hot-deals-f9/'))
    topictitle = doc.css('.topictitle')

    @deals = []
    topictitle[1, topictitle.length].each do |tt|
      links = tt.css('a')
      deal = {}
      if links.length == 1
        deal[:text] = links.text
      elsif links.length == 2
        deal[:retailer] = links[0].text
        deal[:text] = links[1].text
      else
        puts 'LINKS LONGER THAN 2?!'
      end
      @deals.push(deal)
    end

    puts @deals
    @deals
  end
end
