class RestaurantRatingsController < ApplicationController
  before_action :set_restaurant_rating, only: [:show, :edit, :update, :destroy, :new]
  
  before_filter :set_restaurant

  # GET /restaurant_ratings
  # GET /restaurant_ratings.json
  def index
    @restaurant_ratings = @restaurant.restaurant_ratings
  end

  # GET /restaurant_ratings/1
  # GET /restaurant_ratings/1.json
  def show
  end

  # GET /restaurant_ratings/new
  def new
   
    @restaurant_rating = @restaurant.restaurant_ratings.new
  end

  # GET /restaurant_ratings/1/edit
  def edit
  end

  # POST /restaurant_ratings
  # POST /restaurant_ratings.json
  def create

    @restaurant_rating = @restaurant.restaurant_ratings.new(restaurant_rating_params)

    respond_to do |format|
      if @restaurant_rating.save
        format.html { redirect_to @restaurant_rating, notice: 'Restaurant rating was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant_rating }
      else
        format.html { render :new }
        format.json { render json: @restaurant_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurant_ratings/1
  # PATCH/PUT /restaurant_ratings/1.json

  def update

    respond_to do |format|
      if @restaurant_rating.update(params[:restaurant_rating])
        format.html { redirect_to @restaurant_rating, notice: 'Restaurant rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant_rating }
      else
        format.html { render :edit }
        format.json { render json: @restaurant_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_ratings/1
  # DELETE /restaurant_ratings/1.json
  def destroy
    
    @restaurant_rating.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_ratings_url, notice: 'Restaurant rating was successfully destroyed.' }
      format.json { head :no_content }
      format.js  #can respond to javascript
    end
  end
  
  
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_rating
      @restaurant_rating = @restaurants.restaurant_ratings.find(params[:id])
    end
  
  private 
  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_rating_params
      params.require(:restaurant_rating).permit(:rate_value, :user_id, :restaurant_id, :content, :restaurant_rating)
    end
end
