class ArtigosController < ApplicationController
  # GET /artigos
  # GET /artigos.json
  
  layout "artigo"
  
  def index
    @artigos = Artigo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @artigos }
    end
  end

  # GET /artigos/1
  # GET /artigos/1.json
  def show
    @artigo = Artigo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @artigo }
    end
  end

  # GET /artigos/new
  # GET /artigos/new.json
  def new
    @artigo = Artigo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @artigo }
    end
  end

  # GET /artigos/1/edit
  def edit
    @artigo = Artigo.find(params[:id])
  end

  # POST /artigos
  # POST /artigos.json
  def create
    @artigo = Artigo.new(params[:artigo])

    respond_to do |format|
      if @artigo.save
        format.html { redirect_to @artigo, notice: 'Artigo was successfully created.' }
        format.json { render json: @artigo, status: :created, location: @artigo }
      else
        format.html { render action: "new" }
        format.json { render json: @artigo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /artigos/1
  # PUT /artigos/1.json
  def update
    @artigo = Artigo.find(params[:id])

    respond_to do |format|
      if @artigo.update_attributes(params[:artigo])
        format.html { redirect_to @artigo, notice: 'Artigo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @artigo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artigos/1
  # DELETE /artigos/1.json
  def destroy
    @artigo = Artigo.find(params[:id])
    @artigo.destroy

    respond_to do |format|
      format.html { redirect_to artigos_url }
      format.json { head :no_content }
    end
  end
end
