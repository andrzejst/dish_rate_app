class DishRatingCommentsController < ApplicationController
  before_action :set_dish_rating_comment, only: [:show, :edit, :update, :destroy]

  # GET /dish_rating_comments
  # GET /dish_rating_comments.json
  def index
    @dish_rating_comments = DishRatingComment.all
  end

  # GET /dish_rating_comments/1
  # GET /dish_rating_comments/1.json
  def show
  end

  # GET /dish_rating_comments/new
  def new
    @dish_rating_comment = DishRatingComment.new
  end

  # GET /dish_rating_comments/1/edit
  def edit
  end

  # POST /dish_rating_comments
  # POST /dish_rating_comments.json
  def create
    @dish_rating_comment = DishRatingComment.new(dish_rating_comment_params)

    respond_to do |format|
      if @dish_rating_comment.save
        format.html { redirect_to @dish_rating_comment, notice: 'Dish rating comment was successfully created.' }
        format.json { render :show, status: :created, location: @dish_rating_comment }
      else
        format.html { render :new }
        format.json { render json: @dish_rating_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dish_rating_comments/1
  # PATCH/PUT /dish_rating_comments/1.json
  def update
    respond_to do |format|
      if @dish_rating_comment.update(dish_rating_comment_params)
        format.html { redirect_to @dish_rating_comment, notice: 'Dish rating comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @dish_rating_comment }
      else
        format.html { render :edit }
        format.json { render json: @dish_rating_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dish_rating_comments/1
  # DELETE /dish_rating_comments/1.json
  def destroy
    @dish_rating_comment.destroy
    respond_to do |format|
      format.html { redirect_to dish_rating_comments_url, notice: 'Dish rating comment was successfully destroyed.' }
      format.json { head :no_content }
      format.js  #can respond to javascript
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dish_rating_comment
      @dish_rating_comment = DishRatingComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dish_rating_comment_params
      params.require(:dish_rating_comment).permit(:content, :user_id, :dish_rating_id)
    end
end
