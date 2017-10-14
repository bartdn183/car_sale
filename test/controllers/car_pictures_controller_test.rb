require 'test_helper'

class CarPicturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @car_picture = car_pictures(:one)
  end

  test "should get index" do
    get car_pictures_url
    assert_response :success
  end

  test "should get new" do
    get new_car_picture_url
    assert_response :success
  end

  test "should create car_picture" do
    assert_difference('CarPicture.count') do
      post car_pictures_url, params: { car_picture: { car_id: @car_picture.car_id } }
    end

    assert_redirected_to car_picture_url(CarPicture.last)
  end

  test "should show car_picture" do
    get car_picture_url(@car_picture)
    assert_response :success
  end

  test "should get edit" do
    get edit_car_picture_url(@car_picture)
    assert_response :success
  end

  test "should update car_picture" do
    patch car_picture_url(@car_picture), params: { car_picture: { car_id: @car_picture.car_id } }
    assert_redirected_to car_picture_url(@car_picture)
  end

  test "should destroy car_picture" do
    assert_difference('CarPicture.count', -1) do
      delete car_picture_url(@car_picture)
    end

    assert_redirected_to car_pictures_url
  end
end
