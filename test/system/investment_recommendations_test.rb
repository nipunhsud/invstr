require "application_system_test_case"

class InvestmentRecommendationsTest < ApplicationSystemTestCase
  setup do
    @investment_recommendation = investment_recommendations(:one)
  end

  test "visiting the index" do
    visit investment_recommendations_url
    assert_selector "h1", text: "Investment Recommendations"
  end

  test "creating a Investment recommendation" do
    visit investment_recommendations_url
    click_on "New Investment Recommendation"

    fill_in "Body", with: @investment_recommendation.body
    check "Private" if @investment_recommendation.private
    fill_in "Tkrsymbol", with: @investment_recommendation.tkrsymbol
    fill_in "User", with: @investment_recommendation.user_id
    click_on "Create Investment recommendation"

    assert_text "Investment recommendation was successfully created"
    click_on "Back"
  end

  test "updating a Investment recommendation" do
    visit investment_recommendations_url
    click_on "Edit", match: :first

    fill_in "Body", with: @investment_recommendation.body
    check "Private" if @investment_recommendation.private
    fill_in "Tkrsymbol", with: @investment_recommendation.tkrsymbol
    fill_in "User", with: @investment_recommendation.user_id
    click_on "Update Investment recommendation"

    assert_text "Investment recommendation was successfully updated"
    click_on "Back"
  end

  test "destroying a Investment recommendation" do
    visit investment_recommendations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Investment recommendation was successfully destroyed"
  end
end
