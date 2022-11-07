class InquilinosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_inquilino, only: %i[ edit update destroy ]

  def index
    @inquilinos = current_user.inquilinos
    @search = search
    if search
      @inquilinos = @inquilinos.where("name LIKE '%#{@search}%' OR
                                       sobrenome LIKE '%#{@search}%' OR
                                       andar LIKE '%#{@search.upcase}%' OR
                                       numero LIKE '%#{@search}%'")
    end
  end


  def new
    @inquilino = current_user.inquilinos.new
  end

  def edit
  end

  def create
    @inquilino = current_user.inquilinos.new(inquilino_params)

    respond_to do |format|
      if @inquilino.save
        format.html { redirect_to inquilinos_path, notice: "#{@inquilino.name} foi cadastrado com sucesso!!" }
        format.json { render :show, status: :created, location: @inquilino }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inquilino.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @inquilino.update(inquilino_params)
        format.html { redirect_to inquilinos_path, notice: "#{@inquilino.name} foi atualizado com sucesso!!" }
        format.json { render :show, status: :ok, location: @inquilino }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inquilino.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @inquilino.destroy

    respond_to do |format|
      format.html { redirect_to inquilinos_url, notice: "#{@inquilino.name} foi arquivado com sucesso!!" }
      format.json { head :no_content }
    end
  end

  private
    def set_inquilino
      @inquilino = current_user.inquilinos.find(params[:id])
    end

    def inquilino_params
      params.require(:inquilino).permit(:name, :sobrenome, :telefone, :email, :numero, :andar, :complemento)
    end

    def search
      params[:search]
    end
end
