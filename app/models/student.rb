class Student < ActiveRecord::Base
  attr_accessor :name
  belongs_to :house

end