require 'test_helper'

class ShopDogControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shop_dog_index_url
    assert_response :success
  end

end
