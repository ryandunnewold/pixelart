require 'test_helper'

class ArtControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get art_index_url
    assert_response :success
  end

  test "should get show" do
    get art_show_url
    assert_response :success
  end

  test "should get new" do
    get art_new_url
    assert_response :success
  end

  test "should get create" do
    get art_create_url
    assert_response :success
  end

  test "should get edit" do
    get art_edit_url
    assert_response :success
  end

  test "should get update" do
    get art_update_url
    assert_response :success
  end

  test "should get destroy" do
    get art_destroy_url
    assert_response :success
  end

end
