class HttpChecker < Checker

  def up?
    io = open(self.options[:url])
    body = io.read[0, 50]
    io.status[0] == '200'
  end

end