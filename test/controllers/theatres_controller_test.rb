require 'test_helper'

class TheatresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @theatre = theatres(:one)
  end

  test "should get index" do
    get theatres_url
    assert_response :success
  end

  test "should get new" do
    get new_theatre_url
    assert_response :success
  end

  test "should create theatre" do
    assert_difference('Theatre.count') do
      post theatres_url, params: { theatre: { largeur: @theatre.largeur, lieu: @theatre.lieu, longueur: @theatre.longueur, surface: @theatre.surface, titre: @theatre.titre, type: @theatre.type } }
    end

    assert_redirected_to theatre_url(Theatre.last)
  end

  test "should show theatre" do
    get theatre_url(@theatre)
    assert_response :success
  end

  test "should get edit" do
    get edit_theatre_url(@theatre)
    assert_response :success
  end

  test "should update theatre" do
    patch theatre_url(@theatre), params: { theatre: { largeur: @theatre.largeur, lieu: @theatre.lieu, longueur: @theatre.longueur, surface: @theatre.surface, titre: @theatre.titre, type: @theatre.type } }
    assert_redirected_to theatre_url(@theatre)
  end

  test "should destroy theatre" do
    assert_difference('Theatre.count', -1) do
      delete theatre_url(@theatre)
    end

    assert_redirected_to theatres_url
  end
end
