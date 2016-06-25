class CategotiesController < ApplicationController
  before_action :set_categoty, only: [:show, :edit, :update, :destroy]

  # GET /categoties
  # GET /categoties.json
  def index
    @categoties = Categoty.all
  end

  # GET /categoties/1
  # GET /categoties/1.json
  def show
  end

  # GET /categoties/new
  def new
    @categoty = Categoty.new
  end

  # GET /categoties/1/edit
  def edit
  end

  # POST /categoties
  # POST /categoties.json
  def create
    @categoty = Categoty.new(categoty_params)

    respond_to do |format|
      if @categoty.save
        format.html { redirect_to @categoty, notice: 'Categoty was successfully created.' }
        format.json { render :show, status: :created, location: @categoty }
      else
        format.html { render :new }
        format.json { render json: @categoty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categoties/1
  # PATCH/PUT /categoties/1.json
  def update
    respond_to do |format|
      if @categoty.update(categoty_params)
        format.html { redirect_to @categoty, notice: 'Categoty was successfully updated.' }
        format.json { render :show, status: :ok, location: @categoty }
      else
        format.html { render :edit }
        format.json { render json: @categoty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categoties/1
  # DELETE /categoties/1.json
  def destroy
    @categoty.destroy
    respond_to do |format|
      format.html { redirect_to categoties_url, notice: 'Categoty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoty
      @categoty = Categoty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categoty_params
      params.require(:categoty).permit(:name, :description)
    end
end
