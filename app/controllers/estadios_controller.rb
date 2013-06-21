class EstadiosController < ApplicationController
 
 before_filter :autenticacao, :except => [:index, :show] # linha adicionada
 
 
 
  # GET /estadios
  # GET /estadios.json
  def index
    @estadios = Estadio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @estadios }
    end
  end

  # GET /estadios/1
  # GET /estadios/1.json
  def show
    @estadio = Estadio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @estadio }
    end
  end

  # GET /estadios/new
  # GET /estadios/new.json
  def new
    @estadio = Estadio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @estadio }
    end
  end

  # GET /estadios/1/edit
  def edit
    @estadio = Estadio.find(params[:id])
  end

  # POST /estadios
  # POST /estadios.json
  def create
    @estadio = Estadio.new(params[:estadio])

    respond_to do |format|
      if @estadio.save
        format.html { redirect_to @estadio, notice: 'Estadio criado com sucesso!!' }
        format.json { render json: @estadio, status: :created, location: @estadio }
      else
        format.html { render action: "new" }
        format.json { render json: @estadio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /estadios/1
  # PUT /estadios/1.json
  def update
    @estadio = Estadio.find(params[:id])

    respond_to do |format|
      if @estadio.update_attributes(params[:estadio])
        format.html { redirect_to @estadio, notice: 'Estadio editado com sucesso!!.' }
        format.json { head :no_content }
      else
        format.html { render action: "Editar" }
        format.json { render json: @estadio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estadios/1
  # DELETE /estadios/1.json
  def destroy
    @estadio = Estadio.find(params[:id])
    @estadio.destroy

    respond_to do |format|
      format.html { redirect_to estadios_url }
      format.json { head :no_content }
    end
  end
end
