require 'test_helper'

class LecturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lecture = lectures(:one)
  end

  test "should get index" do
    get lectures_url, as: :json
    assert_response :success
  end

  test "should create lecture" do
    assert_difference('Lecture.count') do
      post lectures_url, params: { lecture: { classroom: @lecture.classroom, school_id: @lecture.school_id, start_date: @lecture.start_date, teacher_id: @lecture.teacher_id } }, as: :json
    end

    assert_response 201
  end

  test "should show lecture" do
    get lecture_url(@lecture), as: :json
    assert_response :success
  end

  test "should update lecture" do
    patch lecture_url(@lecture), params: { lecture: { classroom: @lecture.classroom, school_id: @lecture.school_id, start_date: @lecture.start_date, teacher_id: @lecture.teacher_id } }, as: :json
    assert_response 200
  end

  test "should destroy lecture" do
    assert_difference('Lecture.count', -1) do
      delete lecture_url(@lecture), as: :json
    end

    assert_response 204
  end
end
