require 'test_helper'

class HelpsControllerTest < ActionController::TestCase
  setup do
    @help = helps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:helps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create help" do
    assert_difference('Help.count') do
      post :create, help: { code: @help.code, description: @help.description, email: @help.email, first_name: @help.first_name, invoice: @help.invoice, last_name: @help.last_name, payment_status: @help.payment_status, question_status: @help.question_status }
    end

    assert_redirected_to help_path(assigns(:help))
  end

  test "should show help" do
    get :show, id: @help
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @help
    assert_response :success
  end

  test "should update help" do
    patch :update, id: @help, help: { code: @help.code, description: @help.description, email: @help.email, first_name: @help.first_name, invoice: @help.invoice, last_name: @help.last_name, payment_status: @help.payment_status, question_status: @help.question_status }
    assert_redirected_to help_path(assigns(:help))
  end

  test "should destroy help" do
    assert_difference('Help.count', -1) do
      delete :destroy, id: @help
    end

    assert_redirected_to helps_path
  end
end
