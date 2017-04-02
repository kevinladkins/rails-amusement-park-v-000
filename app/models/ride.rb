class Ride < ActiveRecord::Base
  belongs_to :user
  belongs_to :attraction
  # write associations here

  def take_ride
    if attraction.tickets > user.tickets && attraction.min_height > user.height
       return "Sorry. You do not have enough tickets to ride the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
    elsif attraction.tickets > user.tickets
       return "Sorry. You do not have enough tickets to ride the #{attraction.name}."
    elsif attraction.min_height > user.height
      return "Sorry. You are not tall enough to ride the #{attraction.name}."
    else
      user.update(tickets: user.tickets - attraction.tickets, nausea: user.nausea + attraction.nausea_rating, happiness: user.happiness + attraction.happiness_rating)
      return "Thanks for riding the #{attraction.name}!"
    end

  end

end
