class ConfersController < ApplicationController
  before_action :set_confer, only: [:show, :edit, :update, :destroy]

  # GET /confers
  # GET /confers.json
  def index
    @confers = Confer.all
    # @countries = Country.all
    # @subjects = Subject.all
  end

  # GET /confers/1
  # GET /confers/1.json
  def show
  end

  # GET /confers/new
  def new
    @confer = Confer.new
    @countries = Country.all
    @subjects = Subject.all
  end

  # GET /confers/1/edit
  def edit
    @countries = Country.all
    @subjects = Subject.all
  end

  # POST /confers
  # POST /confers.json
  def create
    @confer = Confer.new(confer_params)

    respond_to do |format|
      if @confer.save
        format.html { redirect_to @confer, notice: 'Confer was successfully created.' }
        format.json { render :show, status: :created, location: @confer }
      else
        format.html { 
          @countries = Country.all
          @subjects = Subject.all
          render :new 
        }
        # format.html { redirect_to new_confer_url }
        # format.html { render json: @confer.errors, status: :unprocessable_entity }
        format.json { render json: @confer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /confers/1
  # PATCH/PUT /confers/1.json
  def update
    respond_to do |format|
      if @confer.update(confer_params)
        format.html { redirect_to @confer, notice: 'Confer was successfully updated.' }
        format.json { render :show, status: :ok, location: @confer }
      else
        format.html { render :edit }
        format.json { render json: @confer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /confers/1
  # DELETE /confers/1.json
  def destroy
    @confer.destroy
    respond_to do |format|
      format.html { redirect_to confers_url, notice: 'Confer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_confer
      @confer = Confer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def confer_params
      params.require(:confer).permit(:name, :description, :link, :start_time, :end_time, :subject_id, :country_id, :img, :location)
    end
end
