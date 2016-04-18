require 'test_helper'

class PlayerHistoriesControllerTest < ActionController::TestCase
  setup do
    @player_history = player_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_history" do
    assert_difference('PlayerHistory.count') do
      post :create, player_history: { club: @player_history.club, performance: @player_history.performance, period: @player_history.period, player_id: @player_history.player_id }
    end

    assert_redirected_to player_history_path(assigns(:player_history))
  end

  test "should show player_history" do
    get :show, id: @player_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_history
    assert_response :success
  end

  test "should update player_history" do
    patch :update, id: @player_history, player_history: { club: @player_history.club, performance: @player_history.performance, period: @player_history.period, player_id: @player_history.player_id }
    assert_redirected_to player_history_path(assigns(:player_history))
  end

  test "should destroy player_history" do
    assert_difference('PlayerHistory.count', -1) do
      delete :destroy, id: @player_history
    end

    assert_redirected_to player_histories_path
  end
end
