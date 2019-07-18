require_relative '../lib/01_mairie_christmas'

describe "mairie_christmas method include names" do 
	it "should return many town names" do 
		expect($Final_hash.include?("GONESSE")).to eq(true)
	end 
	it "should return many town names" do 
		expect($Final_hash.include?("SANNOIS")).to eq(true)
	end 
	it "should return many town names" do 
		expect($Final_hash.include?("LA CHAPELLE EN VEXIN")).to eq(true)
	end 
end 
 describe "mairie_christmas names have values" do
 	it "should return a value" do 
 		expect(($Final_hash["GONESSE"] != nil)  && ($Final_hash["GONESSE"] != 0)).to eq(true)
 	end
 	it "should return a value" do 
 		expect(($Final_hash["SANNOIS"] != nil)  && ($Final_hash["SANNOIS"] != 0)).to eq(true)
 	end 
 	it "should return a value" do 
 		expect(($Final_hash["LA CHAPELLE EN VEXIN"] != nil)  && ($Final_hash["LA CHAPELLE EN VEXIN"] != 0)).to eq(true)
 	end  
 end 

 describe "mairie_christmas size" do 
 	it "should be superior to 100" do
 		expect($Final_hash.size >  100).to eq(true)
 	end 
 end 
