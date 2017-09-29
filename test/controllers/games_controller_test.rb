require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  setup do
    @game = games(:game_one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:games)
  end

  test "should create game" do
    assert_difference('Game.count') do
      post :new, barcode: 'barcode2', title: 'New Game', publisher: 'New Publisher'
    end

    assert_response :success
  end

  test "should show game" do
    xhr :get, :display, barcode: @game.barcode
    assert_response :success
  end

end
