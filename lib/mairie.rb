require 'nokogiri'
require 'open-uri'
   
@cergy = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/95/cergy.html"))   
@mairie= Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise.html")) 



def get_townhall_email(townhall_url)
   @cergy.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]").each do |node|
	  puts node.text
	end
end

