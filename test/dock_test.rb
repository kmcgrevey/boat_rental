require 'minitest/autorun'
require 'minitest/pride'
require './lib/boat'
require './lib/renter'
require './lib/dock'

class DockTest < Minitest::Test

  def setup
    @dock = Dock.new("The Rowing Dock", 3)
  end

  def test_it_exists
    assert_instance_of Dock, @dock
  end

  def test_it_has_attributes
    assert_equal "The Rowing Dock", @dock.name
    assert_equal 3, @dock.max_rental_time
  end
end



#
# pry(main)> kayak_1 = Boat.new(:kayak, 20)
# # => #<Boat:0x00007fdeedb3a528...>
#
# pry(main)> kayak_2 = Boat.new(:kayak, 20)
# # => #<Boat:0x00007fdeedae1860...>
#
# pry(main)> sup_1 = Boat.new(:standup_paddle_board, 15)
# # => #<Boat:0x00007fdeedaa8bc8...>
#
# pry(main)> patrick = Renter.new("Patrick Star", "4242424242424242")
# # => #<Renter:0x00007fdeed0ab828...>
#
# pry(main)> eugene = Renter.new("Eugene Crabs", "1313131313131313")
# # => #<Renter:0x00007fdeed8ce5c8...>
#
# pry(main)> dock.rent(kayak_1, patrick)
#
# pry(main)> dock.rent(kayak_2, patrick)
#
# pry(main)> dock.rent(sup_1, eugene)
#
# pry(main)> dock.rental_log
# # =>
# # {
# #   #<Boat:0x00007fdeedb3a528...> => #<Renter:0x00007fdeed0ab828...>,
# #   #<Boat:0x00007fdeedae1860...> => #<Renter:0x00007fdeed0ab828...>,
# #   #<Boat:0x00007fdeedaa8bc8...> => #<Renter:0x00007fdeed8ce5c8...>
# # }
