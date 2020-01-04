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
end
