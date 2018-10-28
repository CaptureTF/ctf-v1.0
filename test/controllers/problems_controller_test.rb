require 'test_helper'

class ProblemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @problem = problems(:one)
  end

  test "should get index" do
    get problems_url
    assert_response :success
  end

  test "should get new" do
    get new_problem_url
    assert_response :success
  end

  test "should create problem" do
    assert_difference('Problem.count') do
      post problems_url, params: { problem: { dirty_bit: @problem.dirty_bit, flag: @problem.flag, max_points: @problem.max_points, problem_id: @problem.problem_id, problem_statement: @problem.problem_statement, successful_submissions: @problem.successful_submissions, supp_file: @problem.supp_file, total_submissions: @problem.total_submissions, upvote_downvote: @problem.upvote_downvote } }
    end

    assert_redirected_to problem_url(Problem.last)
  end

  test "should show problem" do
    get problem_url(@problem)
    assert_response :success
  end

  test "should get edit" do
    get edit_problem_url(@problem)
    assert_response :success
  end

  test "should update problem" do
    patch problem_url(@problem), params: { problem: { dirty_bit: @problem.dirty_bit, flag: @problem.flag, max_points: @problem.max_points, problem_id: @problem.problem_id, problem_statement: @problem.problem_statement, successful_submissions: @problem.successful_submissions, supp_file: @problem.supp_file, total_submissions: @problem.total_submissions, upvote_downvote: @problem.upvote_downvote } }
    assert_redirected_to problem_url(@problem)
  end

  test "should destroy problem" do
    assert_difference('Problem.count', -1) do
      delete problem_url(@problem)
    end

    assert_redirected_to problems_url
  end
end
