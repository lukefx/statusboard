class PingChecker < Checker

  def up?
    p = Net::Ping::TCP.new(self.server.ip, 7)
    p.ping?
  end

end