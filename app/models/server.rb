class Server < ActiveRecord::Base

  attr_accessible :name, :ip
  
  has_many :checkers
  
  def up?
    raise "Subclass and implement it"
  end
  
end
