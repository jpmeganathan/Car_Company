class ServiceTicketsController < ApplicationController
  before_action :set_service_ticket, only: [:show, :edit, :update, :destroy]

  # GET /service_tickets
  # GET /service_tickets.json
  def index
    @service_tickets = ServiceTicket.all
  end

  # GET /service_tickets/1
  # GET /service_tickets/1.json
  def show
  end

  # GET /service_tickets/new
  def new
    @service_ticket = ServiceTicket.new
  end

  # GET /service_tickets/1/edit
  def edit
  end

  # POST /service_tickets
  # POST /service_tickets.json
  def create
    @service_ticket = ServiceTicket.new(service_ticket_params)

    respond_to do |format|
      if @service_ticket.save
        format.html { redirect_to service_tickets_url, notice: 'Service ticket was successfully created.' }
        format.json { render :index, status: :created, location: @service_ticket }
      else
        format.html { render :new }
        format.json { render json: @service_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_tickets/1
  # PATCH/PUT /service_tickets/1.json
  def update
    respond_to do |format|
      if @service_ticket.update(service_ticket_params)
        format.html { redirect_to service_tickets_url, notice: 'Service ticket was successfully updated.' }
        format.json { render :index, status: :ok, location: @service_ticket }
      else
        format.html { render :edit }
        format.json { render json: @service_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_tickets/1
  # DELETE /service_tickets/1.json
  def destroy
    @service_ticket.destroy
    respond_to do |format|
      format.html { redirect_to service_tickets_url, notice: 'Service ticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_ticket
      @service_ticket = ServiceTicket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_ticket_params
      params.require(:service_ticket).permit(:service_ticket_id, :service_ticket_number, :car_id, :customer_id, :date_received, :comments, :date_return_to_cutomer)
    end
end
