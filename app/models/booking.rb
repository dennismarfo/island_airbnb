class Booking < ApplicationRecord
  belongs_to :property
  belongs_to :user

  def advancement
    if check_in_date <= Date.today && check_out_date >= Date.today
      "present"
    elsif check_in_date > Date.today
      "future"
    else
      "past"
    end
  end
end
