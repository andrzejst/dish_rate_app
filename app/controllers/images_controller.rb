class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]
  
  before_filter :load_imageable, only: [:index, :show, :edit, :update, :destroy, :new, :create]
  
  # GET /images
  # GET /images.json
  def index
    #@imageable =  Restaurant.find(params[:restaurant_id])
    @images =  @imageable.images
    #@images = Image.all
  end

  # GET /images/1
  # GET /images/1.json
  def show
  end

  # GET /images/new
  def new
    @image = @imageable.images.new
    
    #@image = Image.new
  end

  # GET /images/1/edit
  def edit
   # @context = context
   # @picture = context.pictures.find(params[:id])
    
  end

  # POST /images
  # POST /images.json
  def create
    @image = @imageable.images.new(params[:image])
    
    #@image = Image.new(image_params)

    respond_to do |format|
      if @image.save
        format.html { redirect_to [@imageable, :images], notice: 'Image was successfully created.' }
        format.json { render :show, status: :created, location: @image }
      else
        format.html { render :new }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /images/1
  # PATCH/PUT /images/1.json
  def update
    respond_to do |format|
      if @image.update(image_params)
        format.html { redirect_to @image, notice: 'Image was successfully updated.' }
        format.json { render :show, status: :ok, location: @image }
      else
        format.html { render :edit }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1
  # DELETE /images/1.json
  def destroy
    @image.destroy
    respond_to do |format|
      format.html { redirect_to images_url, notice: 'Image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params.require(:image).permit(:name, :description, :location_path, :imageable_id, :imageable_type, :restaurant_id, :image, :dish_id, :post_id, :commit, :img)
    end
  
  private
  def load_imageable
    resource, id = request.path.split('/')[1,2]
    @imageable = resource.singularize.classify.constantize.find(id)
  end

end
