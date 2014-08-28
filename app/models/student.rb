class Student < ActiveRecord::Base
  belongs_to :house

  def set_random_house
    houses_count = House.count
      rnd=Random.new

      house=House.find(rnd.rand(1..houses_count) )
      self.house = house
  end

end