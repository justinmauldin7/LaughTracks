class Comedian < ActiveRecord::Base
  has_many :specials
  validates_presence_of :name, :age

  def self.average_age
    average(:age).to_i
  end

  def self.unique_hometowns
    distinct(:city).pluck(:city)
  end
end
