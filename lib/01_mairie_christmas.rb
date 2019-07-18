
require'nokogiri'
require'open-uri'


def get_town_hall_email(url)
	email_tab = []
	page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com#{url}"))
	page.xpath('///html/body/div/main/section[2]/div/table[1]/tbody/tr[4]/td[2]').each do |truc| 
		email_tab << truc.text 
	end
	return email_tab
end


def get_townhall_urls

	url_tab = []
	name_tab = []
	final_email_tab = []
	final_tab = []

	page_all = Nokogiri::HTML(open('https://www.annuaire-des-mairies.com/val-d-oise.html'))
	page_all.xpath('//a[@class = "lientxt"]').each do |node|
		url_tab << node['href'].to_s.delete_prefix('.')
		name_tab << node.text
	end 

	
	url_tab.each do |node|
		final_email_tab << get_town_hall_email(node)
	end 

	$Final_hash = Hash[*name_tab.zip(final_email_tab).flatten]
	$Final_hash.each do |val, key|
    puts final_tab << ("{ #{val} => #{key} }" )
end 
end

get_townhall_urls