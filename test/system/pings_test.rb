require "application_system_test_case"

class PingsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit pings_url
    assert_selector "h1", text: "Pings"
  end

  test "should create ping" do
    visit pings_url
    click_on "New ping"

    click_on "Create new ping"

    assert_text "Ping was successfully created"
  end
end
