class Bagel < ActiveRecord::Base
  
  def to_param
    self.dough.parameterize
  end
end
