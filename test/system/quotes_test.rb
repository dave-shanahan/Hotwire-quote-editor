require "application_system_test_case"

class QuotesTest < ApplicationSystemTestCase

  test "Creating a new quote" do
    visit quotes_path
    assert_selector "h1", text: "Quotes"

    click_on "New quote"
    assert_selector "h1", text: "New Quote"

    fill_in "Name", with: "Capybara quote"
    click_on "Create quote"

    assert_selector "h1", text: "Quotes"
    assert_text "Capybara quote"
  end

  # test "visiting the index" do
  #   visit quotes_url
  #
  #   assert_selector "h1", text: "Quotes"
  # end
end
