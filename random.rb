require 'httparty'

#require 'pry'

p 'Enter number of random numbers you want'
numbers = gets
p numbers.to_i

#response =  HTTParty.get 'https://qrng.anu.edu.au/API/jsonI.php?length='+numbers+'&type=uint16'

response =  HTTParty.get "https://qrng.anu.edu.au/API/jsonI.php?length=#{numbers}&type=uint16"

data = response.parsed_response["data"]


print 'Individual numbers are : '
#data.map {|num| print num}
print data

p 'average number : ' 
print data.sum/data.size
p 


#binding pry
#x=3
#p response.parsed_response