require 'test_helper'

class PartsUsedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parts_used = parts_useds(:one)
  end

  test "should get index" do
    get parts_useds_url
    assert_response :success
  end

  test "should get new" do
    get new_parts_used_url
    assert_response :success
  end

  test "should create parts_used" do
    assert_difference('PartsUsed.count') do
      post parts_useds_url, params: { parts_used: { number_used: @parts_used.number_used, part_id: @parts_used.part_id, parts_used_id: @parts_used.parts_used_id, price: @parts_used.price, service_ticket_id: @parts_used.service_ticket_id } }
    end

    assert_redirected_to parts_used_url(PartsUsed.last)
  end

  test "should show parts_used" do
    get parts_used_url(@parts_used)
    assert_response :success
  end

  test "should get edit" do
    get edit_parts_used_url(@parts_used)
    assert_response :success
  end

  test "should update parts_used" do
    patch parts_used_url(@parts_used), params: { parts_used: { number_used: @parts_used.number_used, part_id: @parts_used.part_id, parts_used_id: @parts_used.parts_used_id, price: @parts_used.price, service_ticket_id: @parts_used.service_ticket_id } }
    assert_redirected_to parts_used_url(@parts_used)
  end

  test "should destroy parts_used" do
    assert_difference('PartsUsed.count', -1) do
      delete parts_used_url(@parts_used)
    end

    assert_redirected_to parts_useds_url
  end
end
