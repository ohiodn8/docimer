require 'test_helper'

class NavtextsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @navtext = navtexts(:one)
  end

  test "should get index" do
    get navtexts_url
    assert_response :success
  end

  test "should get new" do
    get new_navtext_url
    assert_response :success
  end

  test "should create navtext" do
    assert_difference('Navtext.count') do
      post navtexts_url, params: { navtext: { text: @navtext.text } }
    end

    assert_redirected_to navtext_url(Navtext.last)
  end

  test "should show navtext" do
    get navtext_url(@navtext)
    assert_response :success
  end

  test "should get edit" do
    get edit_navtext_url(@navtext)
    assert_response :success
  end

  test "should update navtext" do
    patch navtext_url(@navtext), params: { navtext: { text: @navtext.text } }
    assert_redirected_to navtext_url(@navtext)
  end

  test "should destroy navtext" do
    assert_difference('Navtext.count', -1) do
      delete navtext_url(@navtext)
    end

    assert_redirected_to navtexts_url
  end
end
