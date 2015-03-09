require 'test_helper'

class DishRatingsControllerTest < ActionController::TestCase
  setup do
    @dish_rating = dish_ratings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dish_ratings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dish_rating" do
    assert_difference('DishRating.count') do
      post :create, dish_rating: { dish_id: @dish_rating.dish_id, rate_value: @dish_rating.rate_value, user_id: @dish_rating.user_id }
    end

    assert_redirected_to dish_rating_path(assigns(:dish_rating))
  end

  test "should show dish_rating" do
    get :show, id: @dish_rating
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dish_rating
    assert_response :success
  end

  test "should update dish_rating" do
    patch :update, id: @dish_rating, dish_rating: { dish_id: @dish_rating.dish_id, rate_value: @dish_rating.rate_value, user_id: @dish_rating.user_id }
    assert_redirected_to dish_rating_path(assigns(:dish_rating))
  end

  test "should destroy dish_rating" do
    assert_difference('DishRating.count', -1) do
      delete :destroy, id: @dish_rating
    end

    assert_redirected_to dish_ratings_path
  end
end
