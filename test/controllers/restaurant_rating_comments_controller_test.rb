require 'test_helper'

class RestaurantRatingCommentsControllerTest < ActionController::TestCase
  setup do
    @restaurant_rating_comment = restaurant_rating_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurant_rating_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant_rating_comment" do
    assert_difference('RestaurantRatingComment.count') do
      post :create, restaurant_rating_comment: { content: @restaurant_rating_comment.content, restaurant_rating_id: @restaurant_rating_comment.restaurant_rating_id, user_id: @restaurant_rating_comment.user_id }
    end

    assert_redirected_to restaurant_rating_comment_path(assigns(:restaurant_rating_comment))
  end

  test "should show restaurant_rating_comment" do
    get :show, id: @restaurant_rating_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurant_rating_comment
    assert_response :success
  end

  test "should update restaurant_rating_comment" do
    patch :update, id: @restaurant_rating_comment, restaurant_rating_comment: { content: @restaurant_rating_comment.content, restaurant_rating_id: @restaurant_rating_comment.restaurant_rating_id, user_id: @restaurant_rating_comment.user_id }
    assert_redirected_to restaurant_rating_comment_path(assigns(:restaurant_rating_comment))
  end

  test "should destroy restaurant_rating_comment" do
    assert_difference('RestaurantRatingComment.count', -1) do
      delete :destroy, id: @restaurant_rating_comment
    end

    assert_redirected_to restaurant_rating_comments_path
  end
end
