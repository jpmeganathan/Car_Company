class ServiceMechanicsController < ApplicationController
  before_action :set_service_mechanic, only: [:show, :edit, :update, :destroy]

  # GET /service_mechanics
  # GET /service_mechanics.json
  def index
    @service_mechanics = ServiceMechanic.all
  end

  # GET /service_mechanics/1
  # GET /service_mechanics/1.json
  def show
  end

  # GET /service_mechanics/new
  def new
    @service_mechanic = ServiceMechanic.new
  end

  # GET /service_mechanics/1/edit
  def edit
  end

  # POST /service_mechanics
  # POST /service_mechanics.json
  def create
    @service_mechanic = ServiceMechanic.new(service_mechanic_params)

    respond_to do |format|
      if @service_mechanic.save
        format.html { redirect_to service_mechanics_url, notice: 'Service mechanic was successfully created.' }
        format.json { render :index, status: :created, location: @service_mechanic }
      else
        format.html { render :new }
        format.json { render json: @service_mechanic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_mechanics/1
  # PATCH/PUT /service_mechanics/1.json
  def update
    respond_to do |format|
      if @service_mechanic.update(service_mechanic_params)
        format.html { redirect_to service_mechanics_url notice: 'Service mechanic was successfully updated.' }
        format.json { render :index, status: :ok, location: @service_mechanic }
      else
        format.html { render :edit }
        format.json { render json: @service_mechanic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_mechanics/1
  # DELETE /service_mechanics/1.json
  def destroy
    @service_mechanic.destroy
    respond_to do |format|
      format.html { redirect_to service_mechanics_url, notice: 'Service mechanic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_mechanic
      @service_mechanic = ServiceMechanic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_mechanic_params
      params.require(:service_mechanic).permit(:service_machanic_id, :service_ticket_id, :service_id, :mechanic_id, :hours, :comments, :rate)
    end
end
