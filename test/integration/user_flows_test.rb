require "test_helper"

class UserFlowsTest < ActionDispatch::IntegrationTest
test "can create an user" do
  get "/users/new"
  assert_response :success

  post "/users",
    params: { user: { First_name: "can create", body: "user successfully." } }
  assert_response :redirect
  follow_redirect!
  assert_response :success
  assert_select "p", "User was successfully created."
end
end
