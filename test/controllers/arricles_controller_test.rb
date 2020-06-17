require 'test_helper'

class ArriclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @arricle = arricles(:one)
  end

  test "should get index" do
    get arricles_url
    assert_response :success
  end

  test "should get new" do
    get new_arricle_url
    assert_response :success
  end

  test "should create arricle" do
    assert_difference('Arricle.count') do
      post arricles_url, params: { arricle: { description: @arricle.description, title: @arricle.title } }
    end

    assert_redirected_to arricle_url(Arricle.last)
  end

  test "should show arricle" do
    get arricle_url(@arricle)
    assert_response :success
  end

  test "should get edit" do
    get edit_arricle_url(@arricle)
    assert_response :success
  end

  test "should update arricle" do
    patch arricle_url(@arricle), params: { arricle: { description: @arricle.description, title: @arricle.title } }
    assert_redirected_to arricle_url(@arricle)
  end

  test "should destroy arricle" do
    assert_difference('Arricle.count', -1) do
      delete arricle_url(@arricle)
    end

    assert_redirected_to arricles_url
  end
end
