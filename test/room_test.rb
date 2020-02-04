require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require 'pry'

class RoomTest < Minitest::Test
  def test_it_exists
    room = Room.new(:bedroom, 10, '13')

    assert_instance_of Room, room
  end

  def test_it_has_a_category
    room = Room.new(:bedroom, 10, '13')

    assert_equal :bedroom, room.category
  end

  def test_it_can_get_area
    room1 = Room.new(:bedroom, 10, '13')
    room2 = Room.new(:living_room, 15, '12')

    assert_equal 130, room1.area
    assert_equal 180, room2.area
  end

  def test_if_painted_and_can_be
    room1 = Room.new(:bedroom, 10, '13')
    room2 = Room.new(:living_room, 15, '12')
    room1.paint

    assert_equal true, room1.is_painted?
    assert_equal false, room2.is_painted?
  end
end
