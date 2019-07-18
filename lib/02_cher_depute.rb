
require'nokogiri'
require'open-uri'


def get_deputes_infos(url)
    email_tab = []
    first_name_tab = []
    name_tab = []

   page = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr#{url}"))
   page.xpath('//*[@id="haut-contenu-page"]/article/div[3]/div/dl/dd[4]/ul/li[2]/a').each do |truc|
        email_tab << truc.text
    end 

    page.xpath('//*[@id="haut-contenu-page"]/article/div[2]/h1').each do |item| 
      item = item.text.split
      first_name_tab << item[1]
      name_tab << item[2]
    end 

    $deputes_infos  = Hash["first_name" => first_name_tab, "last_name" => name_tab, "email" => email_tab].flatten

    $deputes_infos.each do |item, val, key|
      item = ("{ #{val} => #{key} }" )
    end 

end

def cher_depute
  url_tab = []
  final_hash = {}
  final_tab = []

  page_all = Nokogiri::HTML(open('http://www2.assemblee-nationale.fr/deputes/liste/alphabetique'))
  page_all.xpath('//*[@id="deputes-list"]//a').each do |node|
  url_tab << node['href'].to_s
  end

  url_tab.each do |item|
    final_tab << [get_deputes_infos(item)]
  end 
    puts final_tab  
end 

cher_depute