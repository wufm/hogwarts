class Student < ActiveRecord::Base
  belongs_to :house

  def set_random_house
    houses_count = House.count
      rnd=Random.new

      house=House.find(rnd.rand(1..houses_count) )
      self.house = house
  end

  def self.scramble_all
    Student.all.each do |s|
      old_house = s.house
      until old_house != s.house do
        s.set_random_house
      end
      s.save
    end
  end
end