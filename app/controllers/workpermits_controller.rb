class WorkpermitsController < ApplicationController
  before_action :set_workpermit, only: [:show, :edit, :update, :destroy, :altedit]

  # GET /workpermits
  # GET /workpermits.json
  def index
    @workpermits = Workpermit.all
  end

  # GET /workpermits/1
  # GET /workpermits/1.json
  def show
  end

  # GET /workpermits/new
  def new
    @workpermit = Workpermit.new
  end

  # GET /workpermits/1/edit
  def edit
  end

  # GET /workpermits/1/altedit
  def altedit
      
  end

  # POST /workpermits
  # POST /workpermits.json
  def create
    @workpermit = Workpermit.new(workpermit_params)

    respond_to do |format|
      if @workpermit.save
        format.html { redirect_to @workpermit, notice: 'Workpermit was successfully created.' }
        format.json { render :show, status: :created, location: @workpermit }
      else
        format.html { render :new }
        format.json { render json: @workpermit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workpermits/1
  # PATCH/PUT /workpermits/1.json
  def update
    respond_to do |format|
      if @workpermit.update(workpermit_params)
        format.html { redirect_to @workpermit, notice: 'Workpermit was successfully updated.' }
        format.json { render :show, status: :ok, location: @workpermit }
      else
        format.html { render :edit }
        format.json { render json: @workpermit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workpermits/1
  # DELETE /workpermits/1.json
  def destroy
    @workpermit.destroy
    respond_to do |format|
      format.html { redirect_to workpermits_url, notice: 'Workpermit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workpermit
      @workpermit = Workpermit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workpermit_params
      params.fetch(:workpermit, {}).permit(:first_name, :last_name, :status, :start_date, :end_date)
    end
end
