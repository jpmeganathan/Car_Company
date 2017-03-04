require 'test_helper'

class ServiceMechanicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_mechanic = service_mechanics(:one)
  end

  test "should get index" do
    get service_mechanics_url
    assert_response :success
  end

  test "should get new" do
    get new_service_mechanic_url
    assert_response :success
  end

  test "should create service_mechanic" do
    assert_difference('ServiceMechanic.count') do
      post service_mechanics_url, params: { service_mechanic: { comments: @service_mechanic.comments, hours: @service_mechanic.hours, mechanic_id: @service_mechanic.mechanic_id, rate: @service_mechanic.rate, service_id: @service_mechanic.service_id, service_machanic_id: @service_mechanic.service_machanic_id, service_ticket_id: @service_mechanic.service_ticket_id } }
    end

    assert_redirected_to service_mechanic_url(ServiceMechanic.last)
  end

  test "should show service_mechanic" do
    get service_mechanic_url(@service_mechanic)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_mechanic_url(@service_mechanic)
    assert_response :success
  end

  test "should update service_mechanic" do
    patch service_mechanic_url(@service_mechanic), params: { service_mechanic: { comments: @service_mechanic.comments, hours: @service_mechanic.hours, mechanic_id: @service_mechanic.mechanic_id, rate: @service_mechanic.rate, service_id: @service_mechanic.service_id, service_machanic_id: @service_mechanic.service_machanic_id, service_ticket_id: @service_mechanic.service_ticket_id } }
    assert_redirected_to service_mechanic_url(@service_mechanic)
  end

  test "should destroy service_mechanic" do
    assert_difference('ServiceMechanic.count', -1) do
      delete service_mechanic_url(@service_mechanic)
    end

    assert_redirected_to service_mechanics_url
  end
end
