class House < ActiveRecord::Base
  attr_accessor :name
  has_many :students

end