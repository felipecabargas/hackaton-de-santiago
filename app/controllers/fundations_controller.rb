class FundationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_fundation, only: [:show, :edit, :update, :destroy]

  # GET /fundations
  # GET /fundations.json
  def index
    @fundations = Fundation.all
  end

  # GET /fundations/1
  # GET /fundations/1.json
  def show
    @dogs = @fundation.dogs
  end

  # GET /fundations/new
  def new
    @fundation = Fundation.new
  end

  # GET /fundations/1/edit
  def edit
  end

  # POST /fundations
  # POST /fundations.json
  def create
    @fundation = Fundation.new(fundation_params)

    respond_to do |format|
      if @fundation.save
        format.html { redirect_to @fundation, notice: 'Fundation was successfully created.' }
        format.json { render :show, status: :created, location: @fundation }
      else
        format.html { render :new }
        format.json { render json: @fundation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fundations/1
  # PATCH/PUT /fundations/1.json
  def update
    respond_to do |format|
      if @fundation.update(fundation_params)
        format.html { redirect_to @fundation, notice: 'Fundation was successfully updated.' }
        format.json { render :show, status: :ok, location: @fundation }
      else
        format.html { render :edit }
        format.json { render json: @fundation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fundations/1
  # DELETE /fundations/1.json
  def destroy
    @fundation.destroy
    respond_to do |format|
      format.html { redirect_to fundations_url, notice: 'Fundation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fundation
      @fundation = Fundation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fundation_params
      params.require(:fundation).permit(:name, :website, :country, :age)
    end
end
