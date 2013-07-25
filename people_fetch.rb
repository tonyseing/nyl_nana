require 'net/http'
require 'pry'
require 'json'

# return all your friends with interests listed on facebook, along
# with their interests

limit = 500
fields = "name,id,interests"
access_token = "CAACEdEose0cBAHmMtwGd4LTx4RNGeKeROEAIIfyZCr7sisYjZBbW617MQEXjkKEvidr8ZC8JIoZBxZB54GZBxWTJLgZBYUZBuHfLZAoiYcLPJ2svlCfpxxxQRgITl3cMCEv8zgOTVAk1hZAEoh9sBPFK7inLydBVnmZAaBI85UnZByNpNwZDZD"

binding.pry
res = Net::HTTP.get_response(URI("https://graph.facebook.com/me/friends?fields=#{fields}&limit=#{limit}&access_token=#{access_token}"))


people = JSON.parse(res.body)
people_with_interests = []

binding.pry
people_with_interests = people["data"].select { |person|  person['interests'] }


puts people_with_interests.to_json






