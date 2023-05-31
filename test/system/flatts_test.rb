require "application_system_test_case"

class FlattsTest < ApplicationSystemTestCase
  setup do
    @flatt = flatts(:one)
  end

  test "visiting the index" do
    visit flatts_url
    assert_selector "h1", text: "Flatts"
  end

  test "should create flatt" do
    visit flatts_url
    click_on "New flatt"

    fill_in "Address", with: @flatt.address
    fill_in "Description", with: @flatt.description
    fill_in "Name", with: @flatt.name
    fill_in "Number of guests", with: @flatt.number_of_guests
    fill_in "Price per night", with: @flatt.price_per_night
    click_on "Create Flatt"

    assert_text "Flatt was successfully created"
    click_on "Back"
  end

  test "should update Flatt" do
    visit flatt_url(@flatt)
    click_on "Edit this flatt", match: :first

    fill_in "Address", with: @flatt.address
    fill_in "Description", with: @flatt.description
    fill_in "Name", with: @flatt.name
    fill_in "Number of guests", with: @flatt.number_of_guests
    fill_in "Price per night", with: @flatt.price_per_night
    click_on "Update Flatt"

    assert_text "Flatt was successfully updated"
    click_on "Back"
  end

  test "should destroy Flatt" do
    visit flatt_url(@flatt)
    click_on "Destroy this flatt", match: :first

    assert_text "Flatt was successfully destroyed"
  end
end
