require 'test_helper'

class BodyColorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @body_color = body_colors(:one)
  end

  test "should get index" do
    get body_colors_url
    assert_response :success
  end

  test "should get new" do
    get new_body_color_url
    assert_response :success
  end

  test "should create body_color" do
    assert_difference('BodyColor.count') do
      post body_colors_url, params: { body_color: { color: @body_color.color, name: @body_color.name } }
    end

    assert_redirected_to body_color_url(BodyColor.last)
  end

  test "should show body_color" do
    get body_color_url(@body_color)
    assert_response :success
  end

  test "should get edit" do
    get edit_body_color_url(@body_color)
    assert_response :success
  end

  test "should update body_color" do
    patch body_color_url(@body_color), params: { body_color: { color: @body_color.color, name: @body_color.name } }
    assert_redirected_to body_color_url(@body_color)
  end

  test "should destroy body_color" do
    assert_difference('BodyColor.count', -1) do
      delete body_color_url(@body_color)
    end

    assert_redirected_to body_colors_url
  end
end
