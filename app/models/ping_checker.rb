class PingChecker < Checker

  def up?
    require 'java'
    address = java.net.InetAddress.getByName(self.server.ip)
    address.isReachable(5000)
  end

end