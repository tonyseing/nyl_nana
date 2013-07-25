require 'net/http'
require 'pry'
require 'csv'
require 'json'

# return all your friends with interests listed on facebook, along
# with their interests

limit = 500
fields = "name,id,interests"

access_token = ""


res = Net::HTTP.get_response(URI("https://graph.facebook.com/me/friends?fields=#{fields}&limit=#{limit}&access_token=#{access_token}"))


people = JSON.parse(res.body)
people_with_interests = []


people_with_interests = people["data"].select { |person|  person['interests'] }

CSV.open("friends_with_interests.csv", "w") do |csv|
  people_with_interests.each do |person|

    interests = ""
    person["interests"]["data"].each_with_index do |interest, index|
      if index == person["interests"]["data"].length - 1
        interests += "#{interest["name"]}"
      else
        interests += "#{interest["name"]} / "        
      end
    end
    #interests =  JSON.parse(person["interests"]["data"]).inject { |result, element| "#{result}, #{element}" }
    csv << [person["name"], interests]
    
  end
end








