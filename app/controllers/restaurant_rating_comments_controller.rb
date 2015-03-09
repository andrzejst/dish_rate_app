class RestaurantRatingCommentsController < ApplicationController
  before_action :set_restaurant_rating_comment, only: [:show, :edit, :update, :destroy]

  # GET /restaurant_rating_comments
  # GET /restaurant_rating_comments.json
  def index
    @restaurant_rating_comments = RestaurantRatingComment.all
  end

  # GET /restaurant_rating_comments/1
  # GET /restaurant_rating_comments/1.json
  def show
  end

  # GET /restaurant_rating_comments/new
  def new
    @restaurant_rating_comment = RestaurantRatingComment.new
  end

  # GET /restaurant_rating_comments/1/edit
  def edit
  end

  # POST /restaurant_rating_comments
  # POST /restaurant_rating_comments.json
  def create
    @restaurant_rating_comment = RestaurantRatingComment.new(restaurant_rating_comment_params)

    respond_to do |format|
      if @restaurant_rating_comment.save
        format.html { redirect_to @restaurant_rating_comment, notice: 'Restaurant rating comment was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant_rating_comment }
      else
        format.html { render :new }
        format.json { render json: @restaurant_rating_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurant_rating_comments/1
  # PATCH/PUT /restaurant_rating_comments/1.json
  def update
    respond_to do |format|
      if @restaurant_rating_comment.update(restaurant_rating_comment_params)
        format.html { redirect_to @restaurant_rating_comment, notice: 'Restaurant rating comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant_rating_comment }
      else
        format.html { render :edit }
        format.json { render json: @restaurant_rating_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_rating_comments/1
  # DELETE /restaurant_rating_comments/1.json
  def destroy
    @restaurant_rating_comment.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_rating_comments_url, notice: 'Restaurant rating comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_rating_comment
      @restaurant_rating_comment = RestaurantRatingComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_rating_comment_params
      params.require(:restaurant_rating_comment).permit(:content, :user_id, :restaurant_rating_id)
    end
end
