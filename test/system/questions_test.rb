require "application_system_test_case"

  class QuestionsTest < ApplicationSystemTestCase
    test "visiting /ask renders the form" do
      visit ask_url
      take_screenshot
      assert_selector "label", text: "Enter a question for your stupid coach"

    end

    test "saying Hello yields a grumpy response from the coach" do
      visit ask_url
      fill_in "question", with: "Hello"
      click_on "Hit me, and don't just hurt me"
      take_screenshot
      assert_text "I don't care, get dressed and go to work!"
    end
  end
