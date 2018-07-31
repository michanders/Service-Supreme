class Vehicle < ApplicationRecord
  has_many :auto_logs
  has_many :notes
  belongs_to :user
  
  
  def mpg_calc(miles, gallons)
    if miles === "0" || gallons === "0"
       mpg = 1
    else
      mpg = miles.to_i/gallons.to_i
    end
    return mpg
  end

end
