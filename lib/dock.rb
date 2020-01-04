class Dock
  attr_reader :name, :max_rental_time, :rental_log

  def initialize(name, time)
    @name = name
    @max_rental_time = time
    @rental_log = {}
  end

  def rent(boat, renter)
    @rental_log[boat] = renter
  end

  def charge(boat)
    boat_charge = {}
    boat_charge[:card_number] = @rental_log[boat].credit_card_number
    # boat_charge[:amount] = boat.price_per_hour * boat.hours_rented
    boat_charge[:amount] = rental_price(boat)
    boat_charge
  end

  def rental_price(boat)
    if boat.hours_rented < @max_rental_time
      boat.price_per_hour * boat.hours_rented
    else
      boat.price_per_hour * @max_rental_time
    end
  end
end
