require 'test_helper'

class LogotextsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @logotext = logotexts(:one)
  end

  test "should get index" do
    get logotexts_url
    assert_response :success
  end

  test "should get new" do
    get new_logotext_url
    assert_response :success
  end

  test "should create logotext" do
    assert_difference('Logotext.count') do
      post logotexts_url, params: { logotext: { text: @logotext.text } }
    end

    assert_redirected_to logotext_url(Logotext.last)
  end

  test "should show logotext" do
    get logotext_url(@logotext)
    assert_response :success
  end

  test "should get edit" do
    get edit_logotext_url(@logotext)
    assert_response :success
  end

  test "should update logotext" do
    patch logotext_url(@logotext), params: { logotext: { text: @logotext.text } }
    assert_redirected_to logotext_url(@logotext)
  end

  test "should destroy logotext" do
    assert_difference('Logotext.count', -1) do
      delete logotext_url(@logotext)
    end

    assert_redirected_to logotexts_url
  end
end
