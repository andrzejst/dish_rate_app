require 'test_helper'

class DishRatingCommentsControllerTest < ActionController::TestCase
  setup do
    @dish_rating_comment = dish_rating_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dish_rating_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dish_rating_comment" do
    assert_difference('DishRatingComment.count') do
      post :create, dish_rating_comment: { content: @dish_rating_comment.content, dish_rating_id: @dish_rating_comment.dish_rating_id, user_id: @dish_rating_comment.user_id }
    end

    assert_redirected_to dish_rating_comment_path(assigns(:dish_rating_comment))
  end

  test "should show dish_rating_comment" do
    get :show, id: @dish_rating_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dish_rating_comment
    assert_response :success
  end

  test "should update dish_rating_comment" do
    patch :update, id: @dish_rating_comment, dish_rating_comment: { content: @dish_rating_comment.content, dish_rating_id: @dish_rating_comment.dish_rating_id, user_id: @dish_rating_comment.user_id }
    assert_redirected_to dish_rating_comment_path(assigns(:dish_rating_comment))
  end

  test "should destroy dish_rating_comment" do
    assert_difference('DishRatingComment.count', -1) do
      delete :destroy, id: @dish_rating_comment
    end

    assert_redirected_to dish_rating_comments_path
  end
end
