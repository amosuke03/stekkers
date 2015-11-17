class StekkersController < ApplicationController
  before_action :set_stekker, only: [:show, :edit, :update, :destroy]

  # GET /stekkers
  # GET /stekkers.json
  def index
    @stekkers = Stekker.order('deadline ASC')
    # @stekkers = Stekker.all
  end

  # GET /stekkers/1
  # GET /stekkers/1.json
  def show
  end

  # GET /stekkers/new
  def new
    @stekker = Stekker.new
  end

  # GET /stekkers/1/edit
  def edit
  end

  # POST /stekkers
  # POST /stekkers.json
  def create
    @stekker = Stekker.new(stekker_params)

    respond_to do |format|
      if @stekker.save
        format.html { redirect_to @stekker, notice: 'Stekker was successfully created.' }
        format.json { render :show, status: :created, location: @stekker }
      else
        format.html { render :new }
        format.json { render json: @stekker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stekkers/1
  # PATCH/PUT /stekkers/1.json
  def update
    respond_to do |format|
      if @stekker.update(stekker_params)
        format.html { redirect_to @stekker, notice: 'Stekker was successfully updated.' }
        format.json { render :show, status: :ok, location: @stekker }
      else
        format.html { render :edit }
        format.json { render json: @stekker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stekkers/1
  # DELETE /stekkers/1.json
  def destroy
    @stekker.destroy
    respond_to do |format|
      format.html { redirect_to stekkers_url, notice: 'Stekker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stekker
      @stekker = Stekker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stekker_params
      params.require(:stekker).permit(:deadline, :memo)
    end
end
