require 'twitter'
require 'dotenv'

Dotenv.load('.env')
puts ENV['Access_Token']

def login_twitter
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["Twitter_API_key"]
  config.consumer_secret     = ENV["Twitter_API_Secret_key"]
  config.access_token        = ENV["Access_Token"]
  config.access_token_secret = ENV["Access_Token_Secret"]
  
end
return client
end

