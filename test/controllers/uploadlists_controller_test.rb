require 'test_helper'

class UploadlistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get uploadlists_index_url
    assert_response :success
  end

end
