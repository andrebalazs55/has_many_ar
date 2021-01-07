require 'test_helper'

class HouseTest < ActiveSupport::TestCase
  test "house change with broken windows" do
    new_house = houses(:updated)

    broken_window = houses(:original).broken_windows.build
    broken_window.house_id = new_house.id

    assert_equal broken_window.house, new_house
  end

  test "house change with windows" do
    new_house = houses(:updated)

    supa_window = houses(:original).windows.build
    supa_window.house_id = new_house.id

    assert_equal supa_window.house, new_house
  end

  test "house change with persistent broken windows" do
    new_house = houses(:updated)

    broken_window = houses(:original).broken_windows.create
    broken_window.house_id = new_house.id

    assert_equal broken_window.house, new_house
  end

  test "house change with persistent windows" do
    new_house = houses(:updated)

    supa_window = houses(:original).windows.create
    supa_window.house_id = new_house.id

    assert_equal supa_window.house, new_house
  end

  test "house change through association with broken windows" do
    new_house = houses(:updated)

    broken_window = houses(:original).broken_windows.build
    broken_window.house = new_house

    assert_equal broken_window.house, new_house
  end

  test "house change through association with windows" do
    new_house = houses(:updated)

    supa_window = houses(:original).windows.build
    supa_window.house = new_house

    assert_equal supa_window.house, new_house
  end
end
