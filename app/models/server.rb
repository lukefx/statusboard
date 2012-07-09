class Server < ActiveRecord::Base
  # attr_accessible :title, :body
  
  def up?
    io = open(self.url)
    body = io.read[0, 50]
    io.status[0] == '200'
  end
  
end
