require "test_helper"

class CosmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cosm = cosms(:one)
  end

  test "should get index" do
    get cosms_url, as: :json
    assert_response :success
  end

  test "should create cosm" do
    assert_difference("Cosm.count") do
      post cosms_url, params: { cosm: { description: @cosm.description, name: @cosm.name, price: @cosm.price } }, as: :json
    end

    assert_response :created
  end

  test "should show cosm" do
    get cosm_url(@cosm), as: :json
    assert_response :success
  end

  test "should update cosm" do
    patch cosm_url(@cosm), params: { cosm: { description: @cosm.description, name: @cosm.name, price: @cosm.price } }, as: :json
    assert_response :success
  end

  test "should destroy cosm" do
    assert_difference("Cosm.count", -1) do
      delete cosm_url(@cosm), as: :json
    end

    assert_response :no_content
  end
end
