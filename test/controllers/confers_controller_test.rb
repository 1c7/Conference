require 'test_helper'

class ConfersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @confer = confers(:one)
  end

  test "should get index" do
    get confers_url
    assert_response :success
  end

  test "should get new" do
    get new_confer_url
    assert_response :success
  end

  test "should create confer" do
    assert_difference('Confer.count') do
      post confers_url, params: { confer: { country: @confer.country, description: @confer.description, end_time: @confer.end_time, img: @confer.img, link: @confer.link, location: @confer.location, name: @confer.name, start_time: @confer.start_time, subject: @confer.subject } }
    end

    assert_redirected_to confer_url(Confer.last)
  end

  test "should show confer" do
    get confer_url(@confer)
    assert_response :success
  end

  test "should get edit" do
    get edit_confer_url(@confer)
    assert_response :success
  end

  test "should update confer" do
    patch confer_url(@confer), params: { confer: { country: @confer.country, description: @confer.description, end_time: @confer.end_time, img: @confer.img, link: @confer.link, location: @confer.location, name: @confer.name, start_time: @confer.start_time, subject: @confer.subject } }
    assert_redirected_to confer_url(@confer)
  end

  test "should destroy confer" do
    assert_difference('Confer.count', -1) do
      delete confer_url(@confer)
    end

    assert_redirected_to confers_url
  end
end
