class Checker < ActiveRecord::Base

  belongs_to :server
  serialize :options

  attr_accessible :name
  
  def up?
    raise "Must implement in subclass"
  end
  
end
