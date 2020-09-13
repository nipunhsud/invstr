require 'test_helper'

class InvestmentRecommendationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @investment_recommendation = investment_recommendations(:one)
  end

  test "should get index" do
    get investment_recommendations_url
    assert_response :success
  end

  test "should get new" do
    get new_investment_recommendation_url
    assert_response :success
  end

  test "should create investment_recommendation" do
    assert_difference('InvestmentRecommendation.count') do
      post investment_recommendations_url, params: { investment_recommendation: { body: @investment_recommendation.body, private: @investment_recommendation.private, tkrsymbol: @investment_recommendation.tkrsymbol, user_id: @investment_recommendation.user_id } }
    end

    assert_redirected_to investment_recommendation_url(InvestmentRecommendation.last)
  end

  test "should show investment_recommendation" do
    get investment_recommendation_url(@investment_recommendation)
    assert_response :success
  end

  test "should get edit" do
    get edit_investment_recommendation_url(@investment_recommendation)
    assert_response :success
  end

  test "should update investment_recommendation" do
    patch investment_recommendation_url(@investment_recommendation), params: { investment_recommendation: { body: @investment_recommendation.body, private: @investment_recommendation.private, tkrsymbol: @investment_recommendation.tkrsymbol, user_id: @investment_recommendation.user_id } }
    assert_redirected_to investment_recommendation_url(@investment_recommendation)
  end

  test "should destroy investment_recommendation" do
    assert_difference('InvestmentRecommendation.count', -1) do
      delete investment_recommendation_url(@investment_recommendation)
    end

    assert_redirected_to investment_recommendations_url
  end
end
