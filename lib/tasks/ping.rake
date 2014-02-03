desc 'Pings site url to keep dyno alive'

task :ping do
  require 'net/http'

  uri = URI('http://www.passages.io')
  Net::HTTP.get_response(uri)
end
