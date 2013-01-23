require 'test_helper'

class EntriesControllerTest < ActionController::TestCase
  setup do
    @entry = entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entry" do
    assert_difference('Entry.count') do
      post :create, entry: { cable_provider: @entry.cable_provider, email: @entry.email, favorite_nhl: @entry.favorite_nhl, first_name: @entry.first_name, last_name: @entry.last_name, zip_code: @entry.zip_code }
    end

    assert_redirected_to entry_path(assigns(:entry))
  end

  test "should show entry" do
    get :show, id: @entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entry
    assert_response :success
  end

  test "should update entry" do
    put :update, id: @entry, entry: { cable_provider: @entry.cable_provider, email: @entry.email, favorite_nhl: @entry.favorite_nhl, first_name: @entry.first_name, last_name: @entry.last_name, zip_code: @entry.zip_code }
    assert_redirected_to entry_path(assigns(:entry))
  end

  test "should destroy entry" do
    assert_difference('Entry.count', -1) do
      delete :destroy, id: @entry
    end

    assert_redirected_to entries_path
  end
end
