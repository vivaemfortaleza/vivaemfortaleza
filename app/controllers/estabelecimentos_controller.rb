class EstabelecimentosController < ApplicationController
  include ComboHelper
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
        efetuar_upload_imagens
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
        efetuar_upload_imagens
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
      puts @estabelecimento
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estabelecimento_params
      params.require(:estabelecimento).permit(:nome,
                                              :endereco,
                                              :numero,
                                              :bairro,
                                              :cidade,
                                              :estado,
                                              :email,
                                              :site,
                                              :fanpage,
                                              :estacionamento,
                                              :logotipo,
                                              :capa,
                                              :anexos => [],
                                              :selo_ids => [],
                                              :imagens_removidas => [],
                                              :horario_estabelecimentos_attributes => [:hora_inicial,
                                                                                   :hora_final,
                                                                                   :dia,
                                                                                   :id,
                                                                                   :_destroy])
    end

    def efetuar_upload_imagens
      processar_imagem = lambda { |imagem, registro|
        if imagem
          if registro
            registro.arquivo.clear
            registro.destroy
          end

          registro = ArquivoImagem.create(arquivo: imagem)
        end
      }

      if params[:anexos]
        params[:anexos].each { |arquivo|
          @estabelecimento.arquivo_imagems.create(arquivo: arquivo)
        }
      end

      processar_imagem.call(params[:capa], @estabelecimento.capa)
      processar_imagem.call(params[:logotipo], @estabelecimento.logotipo)

      if params[:imagens_removidas]
        params[:imagens_removidas].each do |imagem_id|
          imagem = ArquivoImagem.find(imagem_id)
          imagem.arquivo.clear
          imagem.destroy
        end
      end

    end

end
