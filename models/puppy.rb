class Puppy < ActiveRecord::Base 
  attr_accessible :name, :breed, :months_old
  def initialize(name,breed,months_old)
    @name = name 
    @breed = breed
    @months_old = months_old
  end
end