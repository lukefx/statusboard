class Server < ActiveRecord::Base
  
  has_many :checkers
  
  def up?
    raise "Subclass and implement it"
  end
  
end
