require 'test_helper'

class LectureRulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lecture_rule = lecture_rules(:one)
  end

  test "should get index" do
    get lecture_rules_url, as: :json
    assert_response :success
  end

  test "should create lecture_rule" do
    assert_difference('LectureRule.count') do
      post lecture_rules_url, params: { lecture_rule: { description: @lecture_rule.description } }, as: :json
    end

    assert_response 201
  end

  test "should show lecture_rule" do
    get lecture_rule_url(@lecture_rule), as: :json
    assert_response :success
  end

  test "should update lecture_rule" do
    patch lecture_rule_url(@lecture_rule), params: { lecture_rule: { description: @lecture_rule.description } }, as: :json
    assert_response 200
  end

  test "should destroy lecture_rule" do
    assert_difference('LectureRule.count', -1) do
      delete lecture_rule_url(@lecture_rule), as: :json
    end

    assert_response 204
  end
end
