require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

	def setup
		@base_title = "OMT"
	end

  test "should get root" do
  	get static_pages_home_url
  	assert_response :success
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get electronics" do
    get static_pages_electronics_url
    assert_response :success
    assert_select "title", "Electronics | #{@base_title}"
  end

  test "should get furniture" do
    get static_pages_furniture_url
    assert_response :success
    assert_select "title", "Furniture | #{@base_title}"
  end

  test "should get garage_sales" do
    get static_pages_garage_sales_url
    assert_response :success
    assert_select "title", "Garage Sales | #{@base_title}"
  end

end
