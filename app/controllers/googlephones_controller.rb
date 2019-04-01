class GooglephonesController < ApplicationController
  before_action :set_googlephone, only: [:show, :edit, :update, :destroy]

  # GET /googlephones
  # GET /googlephones.json
  def index
    @googlephones = Googlephone.all
  end

  # GET /googlephones/1
  # GET /googlephones/1.json
  def show
  end

  # GET /googlephones/new
  def new
    @googlephone = Googlephone.new
  end

  # GET /googlephones/1/edit
  def edit
  end

  # POST /googlephones
  # POST /googlephones.json
  def create
    @googlephone = Googlephone.new(googlephone_params)

    respond_to do |format|
      if @googlephone.save
        format.html { redirect_to @googlephone, notice: 'Googlephone was successfully created.' }
        format.json { render :show, status: :created, location: @googlephone }
      else
        format.html { render :new }
        format.json { render json: @googlephone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /googlephones/1
  # PATCH/PUT /googlephones/1.json
  def update
    respond_to do |format|
      if @googlephone.update(googlephone_params)
        format.html { redirect_to @googlephone, notice: 'Googlephone was successfully updated.' }
        format.json { render :show, status: :ok, location: @googlephone }
      else
        format.html { render :edit }
        format.json { render json: @googlephone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /googlephones/1
  # DELETE /googlephones/1.json
  def destroy
    @googlephone.destroy
    respond_to do |format|
      format.html { redirect_to googlephones_url, notice: 'Googlephone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_googlephone
      @googlephone = Googlephone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def googlephone_params
      params.require(:googlephone).permit(:name)
    end
end
