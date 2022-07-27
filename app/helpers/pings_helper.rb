module PingsHelper
  def get_duration
    check = Net::Ping::HTTP.new('http://localhost:3000')
    return check.duration if check.ping?
    'ping could not be done'
  end
end
