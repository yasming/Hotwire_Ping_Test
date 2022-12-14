module PingsHelper
  def get_duration
    ping = get_ping
    return ping.duration if ping.ping
    t('pings.ping_not_sent')
  end

  private
  def get_ping
    Net::Ping::HTTP.new(request.base_url)
  end
end
