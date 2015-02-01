require 'net/http'
require 'json'

uri = URI('https://api.relayable.io')
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true
req = Net::HTTP::Post.new('/messages', initheader = {
  'Content-Type' =>'application/json'
})

req.body = {
  link_id: 'YOUR-LINK-ID', 
  message: 'Hey, this was a quick one using relayable.io',
  channel: 'relayable.rb'
}.to_json

res = http.request(req)
puts res.body
