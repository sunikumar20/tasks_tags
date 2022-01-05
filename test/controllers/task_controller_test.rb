require 'test_helper'

class TaskControllerTest < ActionController::TestCase
    test "can create an article" do
	  get "/tasks"
	  assert_response :success

	  # post "/articles",
	  #   params: { article: { title: "can create", body: "article successfully." } }
	  # assert_response :redirect
	  # follow_redirect!
	  # assert_response :success
	  # assert_select "p", "Title:\n  can create"
	end
end
