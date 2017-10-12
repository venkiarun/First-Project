require 'test_helper'

class WorkpermitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workpermit = workpermits(:one)
  end

  test "should get index" do
    get workpermits_url
    assert_response :success
  end

  test "should get new" do
    get new_workpermit_url
    assert_response :success
  end

  test "should create workpermit" do
    assert_difference('Workpermit.count') do
      post workpermits_url, params: { workpermit: { first_name: "FN", last_name:"LN", start_date: "12/01/1981", end_date: "12/01/1999", status:"open"} }
    end
    assert_redirected_to workpermit_url(Workpermit.last)
  end

  test "should show workpermit" do
    get workpermit_url(@workpermit)
    assert_response :success
  end

  test "should get edit" do
    get edit_workpermit_url(@workpermit)
    assert_response :success
  end

  test "should update workpermit" do
    patch workpermit_url(@workpermit), params: { workpermit: {  } }
    assert_redirected_to workpermit_url(@workpermit)
  end

  test "should destroy workpermit" do
    assert_difference('Workpermit.count', -1) do
      delete workpermit_url(@workpermit)
    end

    assert_redirected_to workpermits_url
  end
end
