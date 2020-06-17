class ArriclesController < ApplicationController
  before_action :set_arricle, only: [:show, :edit, :update, :destroy]

  # GET /arricles
  # GET /arricles.json
  def index
    @arricles = Arricle.all
  end

  # GET /arricles/1
  # GET /arricles/1.json
  def show
  end

  # GET /arricles/new
  def new
    @arricle = Arricle.new
  end

  # GET /arricles/1/edit
  def edit
  end

  # POST /arricles
  # POST /arricles.json
  def create
    @arricle = Arricle.new(arricle_params)

    respond_to do |format|
      if @arricle.save
        format.html { redirect_to @arricle, notice: 'Arricle was successfully created.' }
        format.json { render :show, status: :created, location: @arricle }
      else
        format.html { render :new }
        format.json { render json: @arricle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arricles/1
  # PATCH/PUT /arricles/1.json
  def update
    respond_to do |format|
      if @arricle.update(arricle_params)
        format.html { redirect_to @arricle, notice: 'Arricle was successfully updated.' }
        format.json { render :show, status: :ok, location: @arricle }
      else
        format.html { render :edit }
        format.json { render json: @arricle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arricles/1
  # DELETE /arricles/1.json
  def destroy
    @arricle.destroy
    respond_to do |format|
      format.html { redirect_to arricles_url, notice: 'Arricle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arricle
      @arricle = Arricle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def arricle_params
      params.require(:arricle).permit(:title, :description)
    end
end
