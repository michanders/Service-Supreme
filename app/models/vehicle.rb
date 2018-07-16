class Vehicle < ApplicationRecord
  belongs_to :user
  
  def mpg_calc(miles, gallons)
    mpg = miles.to_i/gallons.to_i
    return mpg
  end
end
