class BugResolutionsController < ApplicationController
  before_action :set_bug_resolution, only: [:show, :edit, :update, :destroy]

  # GET /bug_resolutions
  # GET /bug_resolutions.json
  def index
    @bug_resolutions = BugResolution.all
  end

  # GET /bug_resolutions/1
  # GET /bug_resolutions/1.json
  def show
  end

  # GET /bug_resolutions/new
  def new
    @bug_resolution = BugResolution.new
  end

  # GET /bug_resolutions/1/edit
  def edit
  end

  # POST /bug_resolutions
  # POST /bug_resolutions.json
  def create
    @bug_resolution = BugResolution.new(bug_resolution_params)

    respond_to do |format|
      if @bug_resolution.save
        format.html { redirect_to @bug_resolution, notice: 'Bug resolution was successfully created.' }
        format.json { render :show, status: :created, location: @bug_resolution }
      else
        format.html { render :new }
        format.json { render json: @bug_resolution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bug_resolutions/1
  # PATCH/PUT /bug_resolutions/1.json
  def update
    respond_to do |format|
      if @bug_resolution.update(bug_resolution_params)
        format.html { redirect_to @bug_resolution, notice: 'Bug resolution was successfully updated.' }
        format.json { render :show, status: :ok, location: @bug_resolution }
      else
        format.html { render :edit }
        format.json { render json: @bug_resolution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bug_resolutions/1
  # DELETE /bug_resolutions/1.json
  def destroy
    @bug_resolution.destroy
    respond_to do |format|
      format.html { redirect_to bug_resolutions_url, notice: 'Bug resolution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bug_resolution
      @bug_resolution = BugResolution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bug_resolution_params
      params.require(:bug_resolution).permit(:timestamp)
    end
end
