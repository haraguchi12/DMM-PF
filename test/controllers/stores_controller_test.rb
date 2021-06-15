require 'test_helper'

class StoresControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get stores_show_url
    assert_response :success
  end

  test "should get edit" do
    get stores_edit_url
    assert_response :success
  end

  test "should get create" do
    get stores_create_url
    assert_response :success
  end

  test "should get destroy" do
    get stores_destroy_url
    assert_response :success
  end

  test "should get unsubscribe" do
    get stores_unsubscribe_url
    assert_response :success
  end

  test "should get withdraw" do
    get stores_withdraw_url
    assert_response :success
  end

end
