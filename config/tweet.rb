require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "H8A1w6udaGOXkOGs3QdMptMCR"
  config.consumer_secret     = "uJ9GhTsBXswJOrXa4cjMy93HWQY2q9cE5ppcpKUYRpeV09Kzvt"
  #config.access_token        = "Access Tokenを入力"
  #config.access_token_secret = "Access Token Secretを入力"
end

# tweet
#client.update("tweet from my app")