require 'test_helper'

class BloxesControllerTest < ActionController::TestCase
  setup do
    @blox = bloxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bloxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blox" do
    assert_difference('Blox.count') do
      post :create, blox: { blox_profile_id: @blox.blox_profile_id, cycle_id: @blox.cycle_id, functional_area_id: @blox.functional_area_id, knowledge_area_id: @blox.knowledge_area_id, shift_id: @blox.shift_id, title: @blox.title }
    end

    assert_redirected_to blox_path(assigns(:blox))
  end

  test "should show blox" do
    get :show, id: @blox
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blox
    assert_response :success
  end

  test "should update blox" do
    patch :update, id: @blox, blox: { blox_profile_id: @blox.blox_profile_id, cycle_id: @blox.cycle_id, functional_area_id: @blox.functional_area_id, knowledge_area_id: @blox.knowledge_area_id, shift_id: @blox.shift_id, title: @blox.title }
    assert_redirected_to blox_path(assigns(:blox))
  end

  test "should destroy blox" do
    assert_difference('Blox.count', -1) do
      delete :destroy, id: @blox
    end

    assert_redirected_to bloxes_path
  end
end
