class DishRatingsController < ApplicationController
  before_action :set_dish_rating, only: [:show, :edit, :update, :destroy]

  # GET /dish_ratings
  # GET /dish_ratings.json
  def index
    @dish_ratings = DishRating.all
  end

  # GET /dish_ratings/1
  # GET /dish_ratings/1.json
  def show
  end

  # GET /dish_ratings/new
  def new
    @dish_rating = DishRating.new
  end

  # GET /dish_ratings/1/edit
  def edit
  end

  # POST /dish_ratings
  # POST /dish_ratings.json
  def create
    @dish_rating = DishRating.new(dish_rating_params)

    respond_to do |format|
      if @dish_rating.save
        format.html { redirect_to @dish_rating, notice: 'Dish rating was successfully created.' }
        format.json { render :show, status: :created, location: @dish_rating }
      else
        format.html { render :new }
        format.json { render json: @dish_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dish_ratings/1
  # PATCH/PUT /dish_ratings/1.json
  def update
    respond_to do |format|
      if @dish_rating.update(dish_rating_params)
        format.html { redirect_to @dish_rating, notice: 'Dish rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @dish_rating }
      else
        format.html { render :edit }
        format.json { render json: @dish_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dish_ratings/1
  # DELETE /dish_ratings/1.json
  def destroy
    @dish_rating.destroy
    respond_to do |format|
      format.html { redirect_to dish_ratings_url, notice: 'Dish rating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dish_rating
      @dish_rating = DishRating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dish_rating_params
      params.require(:dish_rating).permit(:rate_value, :user_id, :dish_id)
    end
end
