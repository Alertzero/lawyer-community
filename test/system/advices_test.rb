require "application_system_test_case"

class AdvicesTest < ApplicationSystemTestCase
  setup do
    @advice = advices(:one)
  end

  test "visiting the index" do
    visit advices_url
    assert_selector "h1", text: "Advices"
  end

  test "creating a Advice" do
    visit advices_url
    click_on "New Advice"

    fill_in "Lawyer", with: @advice.lawyer_id
    fill_in "Message", with: @advice.message
    fill_in "Question", with: @advice.question_id
    click_on "Create Advice"

    assert_text "Advice was successfully created"
    click_on "Back"
  end

  test "updating a Advice" do
    visit advices_url
    click_on "Edit", match: :first

    fill_in "Lawyer", with: @advice.lawyer_id
    fill_in "Message", with: @advice.message
    fill_in "Question", with: @advice.question_id
    click_on "Update Advice"

    assert_text "Advice was successfully updated"
    click_on "Back"
  end

  test "destroying a Advice" do
    visit advices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Advice was successfully destroyed"
  end
end
