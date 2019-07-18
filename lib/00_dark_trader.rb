require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'


tab_names = []
tab_prices = []
final_tab = []


page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
page.xpath('//a[@class="currency-name-container link-secondary"]').each do |node|
      tab_names << node.text
      #puts node.text
  end

page.xpath('//a[@class="price"]').each do |node|
	tab_prices << node.text
      #puts node.text
  end

 $Dark_trader = Hash[*tab_names.zip(tab_prices).flatten]


$Dark_trader.each do |val, key|
    final_tab << ("{ #{val} => #{key} }" )
end 
	return final_tab

