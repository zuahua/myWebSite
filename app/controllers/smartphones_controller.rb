class SmartphonesController < ApplicationController
  before_action :set_smartphone, only: [:show, :edit, :update, :destroy]

  # GET /smartphones
  # GET /smartphones.json
  def index
    @smartphones = Smartphone.all
  end

  # GET /smartphones/1
  # GET /smartphones/1.json
  def show
  end

  # GET /smartphones/new
  def new
    @smartphone = Smartphone.new
  end

  # GET /smartphones/1/edit
  def edit
  end

  # POST /smartphones
  # POST /smartphones.json
  def create
    @smartphone = Smartphone.new(smartphone_params)

    respond_to do |format|
      if @smartphone.save
        format.html { redirect_to @smartphone, notice: 'Smartphone was successfully created.' }
        format.json { render :show, status: :created, location: @smartphone }
      else
        format.html { render :new }
        format.json { render json: @smartphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smartphones/1
  # PATCH/PUT /smartphones/1.json
  def update
    respond_to do |format|
      if @smartphone.update(smartphone_params)
        format.html { redirect_to @smartphone, notice: 'Smartphone was successfully updated.' }
        format.json { render :show, status: :ok, location: @smartphone }
      else
        format.html { render :edit }
        format.json { render json: @smartphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smartphones/1
  # DELETE /smartphones/1.json
  def destroy
    @smartphone.destroy
    respond_to do |format|
      format.html { redirect_to smartphones_url, notice: 'Smartphone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smartphone
      @smartphone = Smartphone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smartphone_params
      params.require(:smartphone).permit(:name)
    end
end
