require 'test_helper'

class CourseSectionsControllerTest < ActionController::TestCase
  setup do
    @course_section = course_sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_section" do
    assert_difference('CourseSection.count') do
      post :create, course_section: { available: @course_section.available, day: @course_section.day, end_time: @course_section.end_time, enroll: @course_section.enroll, instructor: @course_section.instructor, name: @course_section.name, quota: @course_section.quota, remark: @course_section.remark, room: @course_section.room, sis_id: @course_section.sis_id, start_time: @course_section.start_time, wait: @course_section.wait }
    end

    assert_redirected_to course_section_path(assigns(:course_section))
  end

  test "should show course_section" do
    get :show, id: @course_section
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_section
    assert_response :success
  end

  test "should update course_section" do
    put :update, id: @course_section, course_section: { available: @course_section.available, day: @course_section.day, end_time: @course_section.end_time, enroll: @course_section.enroll, instructor: @course_section.instructor, name: @course_section.name, quota: @course_section.quota, remark: @course_section.remark, room: @course_section.room, sis_id: @course_section.sis_id, start_time: @course_section.start_time, wait: @course_section.wait }
    assert_redirected_to course_section_path(assigns(:course_section))
  end

  test "should destroy course_section" do
    assert_difference('CourseSection.count', -1) do
      delete :destroy, id: @course_section
    end

    assert_redirected_to course_sections_path
  end
end
