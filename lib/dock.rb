class Dock
  attr_reader :name, :max_rental_time, :rental_log, :return_log, :revenue

  def initialize(name, time)
    @name = name
    @max_rental_time = time
    @rental_log = {}
    @return_log = {}
  end

  def rent(boat, renter)
    @rental_log[boat] = renter
  end

  def charge(boat)
    boat_charge = {}
    boat_charge[:card_number] = @rental_log[boat].credit_card_number
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

  def log_hour
    @rental_log.map do |boat|
      boat[0].add_hour
    end
  end

  def return(boat)
    @return_log[boat] = @rental_log.delete(boat)
  end

  def revenue
    if @return_log.length == 0
      0
    else
    (@return_log.map { |boat| rental_price(boat[0])}).sum
    end
  end

end
