require 'rest-client'
require 'json'

url = 'http://server-name:15672/api/?'
q = 'comment'
user = 'user'

resp = RestClient.get "#{url}q=#{q}&language=#{language}"

puts JSON.parse(resp.body)["items"][4]["description"]