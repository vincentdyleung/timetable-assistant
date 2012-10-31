require 'test_helper'

class CourseInfosControllerTest < ActionController::TestCase
  setup do
    @course_info = course_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_info" do
    assert_difference('CourseInfo.count') do
      post :create, course_info: { attributes: @course_info.attributes, description: @course_info.description, previous_code: @course_info.previous_code, vector: @course_info.vector }
    end

    assert_redirected_to course_info_path(assigns(:course_info))
  end

  test "should show course_info" do
    get :show, id: @course_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_info
    assert_response :success
  end

  test "should update course_info" do
    put :update, id: @course_info, course_info: { attributes: @course_info.attributes, description: @course_info.description, previous_code: @course_info.previous_code, vector: @course_info.vector }
    assert_redirected_to course_info_path(assigns(:course_info))
  end

  test "should destroy course_info" do
    assert_difference('CourseInfo.count', -1) do
      delete :destroy, id: @course_info
    end

    assert_redirected_to course_infos_path
  end
end
