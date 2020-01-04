class Dock
  attr_reader :name, :max_rental_time

  def initialize(name, time)
    @name = name
    @max_rental_time = time
  end
end
