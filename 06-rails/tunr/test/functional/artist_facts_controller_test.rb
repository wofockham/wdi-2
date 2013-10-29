require 'test_helper'

class ArtistFactsControllerTest < ActionController::TestCase
  setup do
    @artist_fact = artist_facts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artist_facts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artist_fact" do
    assert_difference('ArtistFact.count') do
      post :create, artist_fact: { fact: @artist_fact.fact, website: @artist_fact.website }
    end

    assert_redirected_to artist_fact_path(assigns(:artist_fact))
  end

  test "should show artist_fact" do
    get :show, id: @artist_fact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artist_fact
    assert_response :success
  end

  test "should update artist_fact" do
    put :update, id: @artist_fact, artist_fact: { fact: @artist_fact.fact, website: @artist_fact.website }
    assert_redirected_to artist_fact_path(assigns(:artist_fact))
  end

  test "should destroy artist_fact" do
    assert_difference('ArtistFact.count', -1) do
      delete :destroy, id: @artist_fact
    end

    assert_redirected_to artist_facts_path
  end
end
