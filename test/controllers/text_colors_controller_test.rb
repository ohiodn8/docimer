require 'test_helper'

class TextColorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @text_color = text_colors(:one)
  end

  test "should get index" do
    get text_colors_url
    assert_response :success
  end

  test "should get new" do
    get new_text_color_url
    assert_response :success
  end

  test "should create text_color" do
    assert_difference('TextColor.count') do
      post text_colors_url, params: { text_color: { color: @text_color.color, name: @text_color.name } }
    end

    assert_redirected_to text_color_url(TextColor.last)
  end

  test "should show text_color" do
    get text_color_url(@text_color)
    assert_response :success
  end

  test "should get edit" do
    get edit_text_color_url(@text_color)
    assert_response :success
  end

  test "should update text_color" do
    patch text_color_url(@text_color), params: { text_color: { color: @text_color.color, name: @text_color.name } }
    assert_redirected_to text_color_url(@text_color)
  end

  test "should destroy text_color" do
    assert_difference('TextColor.count', -1) do
      delete text_color_url(@text_color)
    end

    assert_redirected_to text_colors_url
  end
end
