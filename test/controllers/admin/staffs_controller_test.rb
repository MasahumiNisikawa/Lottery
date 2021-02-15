require 'test_helper'

class Admin::StaffsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_staffs_index_url
    assert_response :success
  end

end
