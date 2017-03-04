class PartsUsedsController < ApplicationController
  before_action :set_parts_used, only: [:show, :edit, :update, :destroy]

  # GET /parts_useds
  # GET /parts_useds.json
  def index
    @parts_useds = PartsUsed.all
  end

  # GET /parts_useds/1
  # GET /parts_useds/1.json
  def show
  end

  # GET /parts_useds/new
  def new
    @parts_used = PartsUsed.new
  end

  # GET /parts_useds/1/edit
  def edit
  end

  # POST /parts_useds
  # POST /parts_useds.json
  def create
    @parts_used = PartsUsed.new(parts_used_params)

    respond_to do |format|
      if @parts_used.save
        format.html { redirect_to parts_useds_url, notice: 'Parts used was successfully created.' }
        format.json { render :index, status: :created, location: @parts_used }
      else
        format.html { render :new }
        format.json { render json: @parts_used.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parts_useds/1
  # PATCH/PUT /parts_useds/1.json
  def update
    respond_to do |format|
      if @parts_used.update(parts_used_params)
        format.html { redirect_to parts_useds_url, notice: 'Parts used was successfully updated.' }
        format.json { render :index, status: :ok, location: @parts_used }
      else
        format.html { render :edit }
        format.json { render json: @parts_used.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parts_useds/1
  # DELETE /parts_useds/1.json
  def destroy
    @parts_used.destroy
    respond_to do |format|
      format.html { redirect_to parts_useds_url, notice: 'Parts used was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parts_used
      @parts_used = PartsUsed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parts_used_params
      params.require(:parts_used).permit(:parts_used_id, :part_id, :service_ticket_id, :number_used, :price)
    end
end
