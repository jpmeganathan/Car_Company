require 'test_helper'

class SalePeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sale_person = sale_people(:one)
  end

  test "should get index" do
    get sale_people_url
    assert_response :success
  end

  test "should get new" do
    get new_sale_person_url
    assert_response :success
  end

  test "should create sale_person" do
    assert_difference('SalePerson.count') do
      post sale_people_url, params: { sale_person: { address: @sale_person.address, first_name: @sale_person.first_name, last_name: @sale_person.last_name, phone_number: @sale_person.phone_number, sales_person_id: @sale_person.sales_person_id } }
    end

    assert_redirected_to sale_person_url(SalePerson.last)
  end

  test "should show sale_person" do
    get sale_person_url(@sale_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_sale_person_url(@sale_person)
    assert_response :success
  end

  test "should update sale_person" do
    patch sale_person_url(@sale_person), params: { sale_person: { address: @sale_person.address, first_name: @sale_person.first_name, last_name: @sale_person.last_name, phone_number: @sale_person.phone_number, sales_person_id: @sale_person.sales_person_id } }
    assert_redirected_to sale_person_url(@sale_person)
  end

  test "should destroy sale_person" do
    assert_difference('SalePerson.count', -1) do
      delete sale_person_url(@sale_person)
    end

    assert_redirected_to sale_people_url
  end
end
