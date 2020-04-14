require 'test_helper'

class ShopCatControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shop_cat_index_url
    assert_response :success
  end

end
