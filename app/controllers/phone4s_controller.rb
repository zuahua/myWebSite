class Phone4sController < ApplicationController
  before_action :set_phone4, only: [:show, :edit, :update, :destroy]

  # GET /phone4s
  # GET /phone4s.json
  def index
    @phone4s = Phone4.all
  end

  # GET /phone4s/1
  # GET /phone4s/1.json
  def show
  end

  # GET /phone4s/new
  def new
    @phone4 = Phone4.new
  end

  # GET /phone4s/1/edit
  def edit
  end

  # POST /phone4s
  # POST /phone4s.json
  def create
    @phone4 = Phone4.new(phone4_params)

    respond_to do |format|
      if @phone4.save
        format.html { redirect_to @phone4, notice: 'Phone4 was successfully created.' }
        format.json { render :show, status: :created, location: @phone4 }
      else
        format.html { render :new }
        format.json { render json: @phone4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phone4s/1
  # PATCH/PUT /phone4s/1.json
  def update
    respond_to do |format|
      if @phone4.update(phone4_params)
        format.html { redirect_to @phone4, notice: 'Phone4 was successfully updated.' }
        format.json { render :show, status: :ok, location: @phone4 }
      else
        format.html { render :edit }
        format.json { render json: @phone4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone4s/1
  # DELETE /phone4s/1.json
  def destroy
    @phone4.destroy
    respond_to do |format|
      format.html { redirect_to phone4s_url, notice: 'Phone4 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone4
      @phone4 = Phone4.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone4_params
      params.require(:phone4).permit(:name)
    end
end
