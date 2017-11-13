# encoding: UTF-8
class ContenidosController < ApplicationController
  before_action :set_contenido, only: [:show, :edit, :update, :destroy]

  # GET /contenidos
  # GET /contenidos.json
  def index
    @tit = "Bienvenidos"
    @contenidos = Contenido.all
  end

  def quienes_somos
    @tit = "Quienes somos"
  end

  def historia
    @tit = "Historia"
  end

  def mision
    @tit = "Misión"
  end

  def vision
    @tit = "Visión"
  end

  def tecnologia
    @tit = "Tecnología"
  end

  def ts
    @tit = "Transformación de suelos"
  end

  def mejora_continua
    @tit = "Mejora Contínua"
  end

  def galeria
    @tit = "Galería"
  end

  def productos
    @tit = "Productos"
  end

  def maiz
    @tit = "Maíz"
  end

  def sorgo
    @tit = "Sorgo"
  end

  def higuerilla
    @tit = "Higuerilla"
  end

  def soya
    @tit = "Soya"
  end

  def ajonjoli
    @tit = "Ajonjolí"
  end

  def frijol
    @tit = "Frijol"
  end

  def ricino
    @tit = "Aceite de Ricino"
  end

  def contacto
    @tit = "Contacto"

    #if request.post?
    #  begin
    #    if Contact.micorreo(params).deliver and Contact.enviar(params).deliver
    #      flash.now[noticia] = "Enviado correctamente"
    #  end

    #  rescue
    #    flash.now[:error] = "No se ha enviado"
    #  end
    #end
  end

  def aviso
    @tit = "Aviso de Privacidad"
  end
 
  # GET /contenidos/1
  # GET /contenidos/1.json
  def show
  end

  # GET /contenidos/new
  def new
    @contenido = Contenido.new
  end

  # GET /contenidos/1/edit
  def edit
  end

  # POST /contenidos
  # POST /contenidos.json
  def create
    @contenido = Contenido.new(contenido_params)

    respond_to do |format|
      if @contenido.save
        format.html { redirect_to @contenido, notice: 'Contenido was successfully created.' }
        format.json { render action: 'show', status: :created, location: @contenido }
      else
        format.html { render action: 'new' }
        format.json { render json: @contenido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contenidos/1
  # PATCH/PUT /contenidos/1.json
  def update
    respond_to do |format|
      if @contenido.update(contenido_params)
        format.html { redirect_to @contenido, notice: 'Contenido was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @contenido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contenidos/1
  # DELETE /contenidos/1.json
  def destroy
    @contenido.destroy
    respond_to do |format|
      format.html { redirect_to contenidos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contenido
      @contenido = Contenido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contenido_params
      params.require(:contenido).permit(:parent_id, :titulo, :texto)
    end
end
