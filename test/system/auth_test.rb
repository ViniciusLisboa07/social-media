require "application_system_test_case"

class AutsTest < ApplicationSystemTestCase
  test "sign up to the website" do
    visit root_path
    click_on "Create your account"
    fill_in "What's yout e-mail?",	with: "email@email.com" 
  end

  # test "visiting the index" do
  #   visit auths_url
  #
  #   assert_selector "h1", text: "Auth"
  # end
end
