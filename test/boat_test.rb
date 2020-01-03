require 'minitest/autorun'
require 'minitest/pride'
require './lib/boat'
require './lib/renter'


class BoatTest < Minitest::Test

  def test_it_exists
    kayak = Boat.new(:kayak, 20)

    assert_instance_of Boat, kayak
  end

end
# pry(main)> kayak = Boat.new(:kayak, 20)
# # => #<Boat:0x00007fceac8f0480...>
#
# pry(main)> kayak.type
# # => :kayak
#
# pry(main)> kayak.price_per_hour
# # => 20
#
# pry(main)> kayak.hours_rented
# # => 0
#
# pry(main)> kayak.add_hour
#
# pry(main)> kayak.add_hour
#
# pry(main)> kayak.add_hour
#
# pry(main)> kayak.hours_rented
# # => 3
#
# pry(main)> renter = Renter.new("Patrick Star", "4242424242424242")
# # => #<Renter:0x00007fb5ef98b118...>
#
# pry(main)> renter.name
# # => "Patrick Star"
#
# pry(main)> renter.credit_card_number
# # => "4242424242424242"
