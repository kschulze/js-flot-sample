class FilbertsController < ApplicationController
  before_action :set_filbert, only: [:show, :edit, :update, :destroy]

  # GET /filberts
  # GET /filberts.json
  def index
    @filberts = Filbert.all
    gon.gezuntas_sum = Filbert.sums_to_json
  end

  # GET /filberts/1
  # GET /filberts/1.json
  def show
  end

  # GET /filberts/new
  def new
    @filbert = Filbert.new
  end

  # GET /filberts/1/edit
  def edit
  end

  # POST /filberts
  # POST /filberts.json
  def create
    @filbert = Filbert.new(filbert_params)

    respond_to do |format|
      if @filbert.save
        format.html { redirect_to @filbert, notice: 'Filbert was successfully created.' }
        format.json { render action: 'show', status: :created, location: @filbert }
      else
        format.html { render action: 'new' }
        format.json { render json: @filbert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /filberts/1
  # PATCH/PUT /filberts/1.json
  def update
    respond_to do |format|
      if @filbert.update(filbert_params)
        format.html { redirect_to @filbert, notice: 'Filbert was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @filbert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filberts/1
  # DELETE /filberts/1.json
  def destroy
    @filbert.destroy
    respond_to do |format|
      format.html { redirect_to filberts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filbert
      @filbert = Filbert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def filbert_params
      params.require(:filbert).permit(:name, :gezuntas)
    end
end
