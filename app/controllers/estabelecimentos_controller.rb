class EstabelecimentosController < ApplicationController
  before_action :set_estabelecimento, only: [:show, :edit, :update, :destroy]

  def new_horario
    @horario = HorarioEstabelecimento.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def horarios
    respond_to do |format|
      format.html
    end
  end

  # GET /estabelecimentos
  # GET /estabelecimentos.json
  def index
    @estabelecimentos = Estabelecimento.all
  end

  # GET /estabelecimentos/1
  # GET /estabelecimentos/1.json
  def show
  end

  # GET /estabelecimentos/new
  def new
    @estabelecimento = Estabelecimento.new
    @estabelecimento.horario_estabelecimentos.build
  end

  # GET /estabelecimentos/1/edit
  def edit
  end

  # POST /estabelecimentos
  # POST /estabelecimentos.json
  def create
    @estabelecimento = Estabelecimento.new(estabelecimento_params)

    respond_to do |format|
      if @estabelecimento.save
        format.html { redirect_to estabelecimentos_url, notice: 'Estabelecimento criado com sucesso.' }
        format.json { render :index, status: :created, location: @estabelecimento }
      else
        format.html { render :new }
        format.json { render json: @estabelecimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estabelecimentos/1
  # PATCH/PUT /estabelecimentos/1.json
  def update
    respond_to do |format|
      if @estabelecimento.update(estabelecimento_params)
        format.html { redirect_to estabelecimentos_url, notice: 'Estabelecimento atualizado com sucesso.' }
        format.json { render :index, status: :ok, location: @estabelecimento }
      else
        format.html { render :edit }
        format.json { render json: @estabelecimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estabelecimentos/1
  # DELETE /estabelecimentos/1.json
  def destroy
    @estabelecimento.destroy
    respond_to do |format|
      format.html { redirect_to estabelecimentos_url, notice: 'Estabelecimento removido com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estabelecimento
      @estabelecimento = Estabelecimento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estabelecimento_params
      params.require(:estabelecimento).permit(:nome, :endereco, :numero, :bairro, :cidade, :estado, :email, :site, :fanpage)
    end
end
