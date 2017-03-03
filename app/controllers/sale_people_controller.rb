class SalePeopleController < ApplicationController
  before_action :set_sale_person, only: [:show, :edit, :update, :destroy]

  # GET /sale_people
  # GET /sale_people.json
  def index
    @sale_people = SalePerson.all
  end

  # GET /sale_people/1
  # GET /sale_people/1.json
  def show
  end

  # GET /sale_people/new
  def new
    @sale_person = SalePerson.new
  end

  # GET /sale_people/1/edit
  def edit
  end

  # POST /sale_people
  # POST /sale_people.json
  def create
    @sale_person = SalePerson.new(sale_person_params)

    respond_to do |format|
      if @sale_person.save
        format.html { redirect_to sale_people_url, notice: 'Sale person was successfully created.' }
        format.json { render :index, status: :created, location: @sale_person }
      else
        format.html { render :new }
        format.json { render json: @sale_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sale_people/1
  # PATCH/PUT /sale_people/1.json
  def update
    respond_to do |format|
      if @sale_person.update(sale_person_params)
        format.html { redirect_to sale_people_url, notice: 'Sale person was successfully updated.' }
        format.json { render :index, status: :ok, location: @sale_person }
      else
        format.html { render :edit }
        format.json { render json: @sale_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sale_people/1
  # DELETE /sale_people/1.json
  def destroy
    @sale_person.destroy
    respond_to do |format|
      format.html { redirect_to sale_people_url, notice: 'Sale person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale_person
      @sale_person = SalePerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sale_person_params
      params.require(:sale_person).permit(:sales_person_id, :first_name, :last_name, :address, :phone_number)
    end
end
