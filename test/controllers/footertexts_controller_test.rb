require 'test_helper'

class FootertextsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @footertext = footertexts(:one)
  end

  test "should get index" do
    get footertexts_url
    assert_response :success
  end

  test "should get new" do
    get new_footertext_url
    assert_response :success
  end

  test "should create footertext" do
    assert_difference('Footertext.count') do
      post footertexts_url, params: { footertext: { text: @footertext.text } }
    end

    assert_redirected_to footertext_url(Footertext.last)
  end

  test "should show footertext" do
    get footertext_url(@footertext)
    assert_response :success
  end

  test "should get edit" do
    get edit_footertext_url(@footertext)
    assert_response :success
  end

  test "should update footertext" do
    patch footertext_url(@footertext), params: { footertext: { text: @footertext.text } }
    assert_redirected_to footertext_url(@footertext)
  end

  test "should destroy footertext" do
    assert_difference('Footertext.count', -1) do
      delete footertext_url(@footertext)
    end

    assert_redirected_to footertexts_url
  end
end
