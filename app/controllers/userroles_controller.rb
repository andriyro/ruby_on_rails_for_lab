class UserrolesController < ApplicationController
  before_action :set_userrole, only: %i[ show edit update destroy ]

  # GET /userroles or /userroles.json
  def index
    @userroles = Userrole.all
  end

  # GET /userroles/1 or /userroles/1.json
  def show
  end

  # GET /userroles/new
  def new
    @userrole = Userrole.new
  end

  # GET /userroles/1/edit
  def edit
  end

  # POST /userroles or /userroles.json
  def create
    @userrole = Userrole.new(userrole_params)

    respond_to do |format|
      if @userrole.save
        format.html { redirect_to userrole_url(@userrole), notice: "Userrole was successfully created." }
        format.json { render :show, status: :created, location: @userrole }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @userrole.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userroles/1 or /userroles/1.json
  def update
    respond_to do |format|
      if @userrole.update(userrole_params)
        format.html { redirect_to userrole_url(@userrole), notice: "Userrole was successfully updated." }
        format.json { render :show, status: :ok, location: @userrole }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @userrole.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userroles/1 or /userroles/1.json
  def destroy
    @userrole.destroy

    respond_to do |format|
      format.html { redirect_to userroles_url, notice: "Userrole was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userrole
      @userrole = Userrole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def userrole_params
      params.require(:userrole).permit(:namerole)
    end
end
