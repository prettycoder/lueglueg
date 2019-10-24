require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { email: @order.email, email_confirmation_sent: @order.email_confirmation_sent, email_pickup_sent: @order.email_pickup_sent, fullname: @order.fullname, order_date: @order.order_date, payed_date: @order.payed_date, phone: @order.phone, pickup: @order.pickup, pickup_date: @order.pickup_date, quantity: @order.quantity, total_price: @order.total_price } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { email: @order.email, email_confirmation_sent: @order.email_confirmation_sent, email_pickup_sent: @order.email_pickup_sent, fullname: @order.fullname, order_date: @order.order_date, payed_date: @order.payed_date, phone: @order.phone, pickup: @order.pickup, pickup_date: @order.pickup_date, quantity: @order.quantity, total_price: @order.total_price } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
