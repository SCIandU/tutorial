require 'test_helper'

class HealthresourcesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get healthresources_index_url
    assert_response :success
  end

  test "should get new" do
    get healthresources_new_url
    assert_response :success
  end

end
