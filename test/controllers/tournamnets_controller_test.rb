require "test_helper"

class TournamnetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tournamnet = tournamnets(:one)
  end

  test "should get index" do
    get tournamnets_url
    assert_response :success
  end

  test "should get new" do
    get new_tournamnet_url
    assert_response :success
  end

  test "should create tournamnet" do
    assert_difference('Tournamnet.count') do
      post tournamnets_url, params: { tournamnet: { endDate: @tournamnet.endDate, results: @tournamnet.results, startDate: @tournamnet.startDate } }
    end

    assert_redirected_to tournamnet_url(Tournamnet.last)
  end

  test "should show tournamnet" do
    get tournamnet_url(@tournamnet)
    assert_response :success
  end

  test "should get edit" do
    get edit_tournamnet_url(@tournamnet)
    assert_response :success
  end

  test "should update tournamnet" do
    patch tournamnet_url(@tournamnet), params: { tournamnet: { endDate: @tournamnet.endDate, results: @tournamnet.results, startDate: @tournamnet.startDate } }
    assert_redirected_to tournamnet_url(@tournamnet)
  end

  test "should destroy tournamnet" do
    assert_difference('Tournamnet.count', -1) do
      delete tournamnet_url(@tournamnet)
    end

    assert_redirected_to tournamnets_url
  end
end
