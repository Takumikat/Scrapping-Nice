require_relative '../lib/00_dark_trader'

describe "Dark_Trader method include names" do 
	it "should return many cryptomoney names" do 
		expect($Dark_trader.include?("Bitcoin")).to eq(true)
	end 
	it "should return many cryptomoney names" do 
		expect($Dark_trader.include?("Ethereum")).to eq(true)
	end 
	it "should return many cryptomoney names" do 
		expect($Dark_trader.include?("XRP")).to eq(true)
	end 
end 
 describe "Dark_trader names have values" do
 	it "should return a value" do 
 		expect(($Dark_trader["Bitcoin"] != nil)  && ($Dark_trader["Bitcoin"] != 0)).to eq(true)
 	end
 	it "should return a value" do 
 		expect(($Dark_trader["Ethereum"] != nil)  && ($Dark_trader["Ethereum"] != 0)).to eq(true)
 	end 
 	it "should return a value" do 
 		expect(($Dark_trader["XRP"] != nil)  && ($Dark_trader["XRP"] != 0)).to eq(true)
 	end  
 end 

 describe "Dark_trader size" do 
 	it "should be superior to 100" do
 		expect($Dark_trader.size >  100).to eq(true)
 	end 
 end 
