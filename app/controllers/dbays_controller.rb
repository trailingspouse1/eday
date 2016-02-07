class DbaysController < ApplicationController
  before_action :set_dbay, only: [:show, :edit, :update, :destroy]

  # GET /dbays
  # GET /dbays.json
  def index
    @dbays = Dbay.all
  end

  # GET /dbays/1
  # GET /dbays/1.json
  def show
  end

  # GET /dbays/new
  def new
    @dbay = Dbay.new
  end

  # GET /dbays/1/edit
  def edit
  end

  # POST /dbays
  # POST /dbays.json
  def create
    @dbay = Dbay.new(dbay_params)

    respond_to do |format|
      if @dbay.save
        format.html { redirect_to @dbay, notice: 'Dbay was successfully created.' }
        format.json { render :show, status: :created, location: @dbay }
      else
        format.html { render :new }
        format.json { render json: @dbay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dbays/1
  # PATCH/PUT /dbays/1.json
  def update
    respond_to do |format|
      if @dbay.update(dbay_params)
        format.html { redirect_to @dbay, notice: 'Dbay was successfully updated.' }
        format.json { render :show, status: :ok, location: @dbay }
      else
        format.html { render :edit }
        format.json { render json: @dbay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dbays/1
  # DELETE /dbays/1.json
  def destroy
    @dbay.destroy
    respond_to do |format|
      format.html { redirect_to dbays_url, notice: 'Dbay was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dbay
      @dbay = Dbay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dbay_params
      params.require(:dbay).permit(:title, :price, :description, :avatar)
    end
end
