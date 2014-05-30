class ContratacionesController < ApplicationController
  before_action :set_contratacione, only: [:show, :edit, :update, :destroy]

  # GET /contrataciones
  # GET /contrataciones.json
  def index
    @contrataciones = Contratacione.all
  end

  # GET /contrataciones/1
  # GET /contrataciones/1.json
  def show
  end

  # GET /contrataciones/new
  def new
    @contratacione = Contratacione.new
  end

  # GET /contrataciones/1/edit
  def edit
  end

  # POST /contrataciones
  # POST /contrataciones.json
  def create
    @contratacione = Contratacione.new(contratacione_params)

    respond_to do |format|
      if @contratacione.save
        format.html { redirect_to @contratacione, notice: 'Contratacione was successfully created.' }
        format.json { render :show, status: :created, location: @contratacione }
      else
        format.html { render :new }
        format.json { render json: @contratacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contrataciones/1
  # PATCH/PUT /contrataciones/1.json
  def update
    respond_to do |format|
      if @contratacione.update(contratacione_params)
        format.html { redirect_to @contratacione, notice: 'Contratacione was successfully updated.' }
        format.json { render :show, status: :ok, location: @contratacione }
      else
        format.html { render :edit }
        format.json { render json: @contratacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contrataciones/1
  # DELETE /contrataciones/1.json
  def destroy
    @contratacione.destroy
    respond_to do |format|
      format.html { redirect_to contrataciones_url, notice: 'Contratacione was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contratacione
      @contratacione = Contratacione.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contratacione_params
      params.require(:contratacione).permit(:evento, :lugar, :fecha)
    end
end
