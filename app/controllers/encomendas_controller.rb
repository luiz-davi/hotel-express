class EncomendasController < ApplicationController
  before_action :authenticate_user!
  before_action :set_encomenda, only: %i[ show edit update destroy ]

  # GET /encomendas or /encomendas.json
  def index
    @encomendas = current_user.encomendas
  end

  # GET /encomendas/1 or /encomendas/1.json
  def show
  end

  # GET /encomendas/new
  def new
    @encomenda = current_user.encomendas.new
  end

  # GET /encomendas/1/edit
  def edit
  end

  # POST /encomendas or /encomendas.json
  def create
    @encomenda = current_user.encomendas.new(encomenda_params)

    respond_to do |format|
      if @encomenda.save
        format.html { redirect_to encomenda_url(@encomenda), notice: "Encomenda do inquilino #{@encomenda.inquilino.name} foi cadastrada com sucesso!" }
        format.json { render :show, status: :created, location: @encomenda }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @encomenda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /encomendas/1 or /encomendas/1.json
  def update
    respond_to do |format|
      if @encomenda.update(encomenda_params)
        format.html { redirect_to encomenda_url(@encomenda), notice: "Encomenda do inquilino #{@encomenda.inquilino.name} foi atualizada!" }
        format.json { render :show, status: :ok, location: @encomenda }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @encomenda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /encomendas/1 or /encomendas/1.json
  def destroy
    @encomenda.destroy

    respond_to do |format|
      format.html { redirect_to encomendas_url, notice: "Encomenda was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_encomenda
      @encomenda = current_user.encomendas.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def encomenda_params
      params.require(:encomenda).permit(:inquilino_id, :data_entregue, :observacao)
    end
end
