class Vehicle < ApplicationRecord
  has_many :auto_logs
  has_many :notes
  belongs_to :user
  
  
  def mpg_calc(miles, gallons)
    mpg = miles.to_i/gallons.to_i
    return mpg
  end

end
