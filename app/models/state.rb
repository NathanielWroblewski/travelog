class State < ActiveRecord::Base

  def self.visited
    where(visited: true)
  end

end
