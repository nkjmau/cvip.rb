require 'twitter'
require 'yaml'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

keys=YAML.load(File.open('./twitter.yml'))

client=Twitter::REST::Client.new do |config|
	config.consumer_key=keys["consumer_key"]
	config.consumer_secret=keys["consumer_secret"]
	config.access_token=keys["access_token"]
	config.access_token_secret=keys["access_token_secret"]
end
client.update(ARGV[0])

