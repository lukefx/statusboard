class Checker < ActiveRecord::Base

  belongs_to :server
  serialize :options

  attr_accessible :name, :type, :options, :server_id
  
  def up?
    # raise "Must implement in subclass"
  end
  
  def self.select_options
    descendants.map{ |c| c.to_s }.sort
  end
  
end
