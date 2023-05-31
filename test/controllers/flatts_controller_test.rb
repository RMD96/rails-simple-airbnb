require "test_helper"

class FlattsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flatt = flatts(:one)
  end

  test "should get index" do
    get flatts_url
    assert_response :success
  end

  test "should get new" do
    get new_flatt_url
    assert_response :success
  end

  test "should create flatt" do
    assert_difference("Flatt.count") do
      post flatts_url, params: { flatt: { address: @flatt.address, description: @flatt.description, name: @flatt.name, number_of_guests: @flatt.number_of_guests, price_per_night: @flatt.price_per_night } }
    end

    assert_redirected_to flatt_url(Flatt.last)
  end

  test "should show flatt" do
    get flatt_url(@flatt)
    assert_response :success
  end

  test "should get edit" do
    get edit_flatt_url(@flatt)
    assert_response :success
  end

  test "should update flatt" do
    patch flatt_url(@flatt), params: { flatt: { address: @flatt.address, description: @flatt.description, name: @flatt.name, number_of_guests: @flatt.number_of_guests, price_per_night: @flatt.price_per_night } }
    assert_redirected_to flatt_url(@flatt)
  end

  test "should destroy flatt" do
    assert_difference("Flatt.count", -1) do
      delete flatt_url(@flatt)
    end

    assert_redirected_to flatts_url
  end
end
