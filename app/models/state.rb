class State < ActiveRecord::Base
  has_many :experiences

  def self.visited
    where(visited: true)
  end

end
