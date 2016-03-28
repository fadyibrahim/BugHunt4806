class BugCreationsController < ApplicationController
  before_action :set_bug_creation, only: [:show, :edit, :update, :destroy]

  # GET /bug_creations
  # GET /bug_creations.json
  def index
    @bug_creations = BugCreation.all
  end

  # GET /bug_creations/1
  # GET /bug_creations/1.json
  def show
  end

  # GET /bug_creations/new
  def new
    @bug_creation = BugCreation.new
  end

  # GET /bug_creations/1/edit
  def edit
  end

  # POST /bug_creations
  # POST /bug_creations.json
  def create
    @bug_creation = BugCreation.new(bug_creation_params)

    respond_to do |format|
      if @bug_creation.save
        format.html { redirect_to @bug_creation, notice: 'Bug creation was successfully created.' }
        format.json { render :show, status: :created, location: @bug_creation }
      else
        format.html { render :new }
        format.json { render json: @bug_creation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bug_creations/1
  # PATCH/PUT /bug_creations/1.json
  def update
    respond_to do |format|
      if @bug_creation.update(bug_creation_params)
        format.html { redirect_to @bug_creation, notice: 'Bug creation was successfully updated.' }
        format.json { render :show, status: :ok, location: @bug_creation }
      else
        format.html { render :edit }
        format.json { render json: @bug_creation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bug_creations/1
  # DELETE /bug_creations/1.json
  def destroy
    @bug_creation.destroy
    respond_to do |format|
      format.html { redirect_to bug_creations_url, notice: 'Bug creation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bug_creation
      @bug_creation = BugCreation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bug_creation_params
      params.require(:bug_creation).permit(:timestamp)
    end
end
