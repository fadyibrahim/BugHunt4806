class BugAssignmentsController < ApplicationController
  before_action :set_bug_assignment, only: [:show, :edit, :update, :destroy]

  # GET /bug_assignments
  # GET /bug_assignments.json
  def index
    @bug_assignments = BugAssignment.all
  end

  # GET /bug_assignments/1
  # GET /bug_assignments/1.json
  def show
  end

  # GET /bug_assignments/new
  def new
    @bug_assignment = BugAssignment.new
  end

  # GET /bug_assignments/1/edit
  def edit
  end

  # POST /bug_assignments
  # POST /bug_assignments.json
  def create
    @bug_assignment = BugAssignment.new(bug_assignment_params)

    respond_to do |format|
      if @bug_assignment.save
        format.html { redirect_to @bug_assignment, notice: 'Bug assignment was successfully created.' }
        format.json { render :show, status: :created, location: @bug_assignment }
      else
        format.html { render :new }
        format.json { render json: @bug_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bug_assignments/1
  # PATCH/PUT /bug_assignments/1.json
  def update
    respond_to do |format|
      if @bug_assignment.update(bug_assignment_params)
        format.html { redirect_to @bug_assignment, notice: 'Bug assignment was successfully updated.' }
        format.json { render :show, status: :ok, location: @bug_assignment }
      else
        format.html { render :edit }
        format.json { render json: @bug_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bug_assignments/1
  # DELETE /bug_assignments/1.json
  def destroy
    @bug_assignment.destroy
    respond_to do |format|
      format.html { redirect_to bug_assignments_url, notice: 'Bug assignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bug_assignment
      @bug_assignment = BugAssignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bug_assignment_params
      params.require(:bug_assignment).permit(:timestamp)
    end
end
