require 'test_helper'

class MoviesPlayersControllerTest < ActionController::TestCase
  setup do
    @movies_player = movies_players(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movies_players)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movies_player" do
    assert_difference('MoviesPlayer.count') do
      post :create, movies_player: {  }
    end

    assert_redirected_to movies_player_path(assigns(:movies_player))
  end

  test "should show movies_player" do
    get :show, id: @movies_player
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movies_player
    assert_response :success
  end

  test "should update movies_player" do
    put :update, id: @movies_player, movies_player: {  }
    assert_redirected_to movies_player_path(assigns(:movies_player))
  end

  test "should destroy movies_player" do
    assert_difference('MoviesPlayer.count', -1) do
      delete :destroy, id: @movies_player
    end

    assert_redirected_to movies_players_path
  end
end
