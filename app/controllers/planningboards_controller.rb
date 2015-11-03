class PlanningboardsController < ApplicationController
  before_action :set_planningboard, only: [:show, :edit, :update, :destroy]

  # GET /planningboards
  # GET /planningboards.json
  def index
    @planningboards = Planningboard.search(params[:keyword])
  end

  # GET /planningboards/1
  # GET /planningboards/1.json
  def show
  end

  # GET /planningboards/new
  def new
    @planningboard = Planningboard.new
  end

  # GET /planningboards/1/edit
  def edit
  end

  # POST /planningboards
  # POST /planningboards.json
  def create
    @planningboard = Planningboard.new(planningboard_params)

    respond_to do |format|
      if @planningboard.save
        format.html { redirect_to @planningboard, notice: 'Planningboard was successfully created.' }
        format.json { render :show, status: :created, location: @planningboard }
      else
        format.html { render :new }
        format.json { render json: @planningboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planningboards/1
  # PATCH/PUT /planningboards/1.json
  def update
    respond_to do |format|
      if @planningboard.update(planningboard_params)
        format.html { redirect_to @planningboard, notice: 'Planningboard was successfully updated.' }
        format.json { render :show, status: :ok, location: @planningboard }
      else
        format.html { render :edit }
        format.json { render json: @planningboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planningboards/1
  # DELETE /planningboards/1.json
  def destroy
    @planningboard.destroy
    respond_to do |format|
      format.html { redirect_to planningboards_url, notice: 'Planningboard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planningboard
      @planningboard = Planningboard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planningboard_params
      params.require(:planningboard).permit(:goal1, :goal2, :goal3, :goal4, :goal5,
                      :url1, :url2, :url3, :url4, :url5,
                      :description1, :description2, :description3, :description4, :description5,
                      :name, :picture1, :picture2, :picture3, :picture4, :picture5,
                      :remove_picture1, :remove_picture2, :remove_picture3, :remove_picture4, :remove_picture5)
    end
end
