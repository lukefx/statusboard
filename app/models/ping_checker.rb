class PingChecker < Checker

  def up?
    java.net.InetAddress.getByName(self.server.ip).isReachable(5000)
  end

end