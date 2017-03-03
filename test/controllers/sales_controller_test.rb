require 'test_helper'

class SalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sale = sales(:one)
  end

  test "should get index" do
    get sales_url
    assert_response :success
  end

  test "should get new" do
    get new_sale_url
    assert_response :success
  end

  test "should create sale" do
    assert_difference('Sale.count') do
      post sales_url, params: { sale: { car_id: @sale.car_id, customer_id: @sale.customer_id, date_of_sale: @sale.date_of_sale, invoice_id: @sale.invoice_id, invoice_number: @sale.invoice_number, sales_person_id: @sale.sales_person_id } }
    end

    assert_redirected_to sale_url(Sale.last)
  end

  test "should show sale" do
    get sale_url(@sale)
    assert_response :success
  end

  test "should get edit" do
    get edit_sale_url(@sale)
    assert_response :success
  end

  test "should update sale" do
    patch sale_url(@sale), params: { sale: { car_id: @sale.car_id, customer_id: @sale.customer_id, date_of_sale: @sale.date_of_sale, invoice_id: @sale.invoice_id, invoice_number: @sale.invoice_number, sales_person_id: @sale.sales_person_id } }
    assert_redirected_to sale_url(@sale)
  end

  test "should destroy sale" do
    assert_difference('Sale.count', -1) do
      delete sale_url(@sale)
    end

    assert_redirected_to sales_url
  end
end
