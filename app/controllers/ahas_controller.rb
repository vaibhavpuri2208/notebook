class AhasController < ApplicationController
  # GET /ahas
  # GET /ahas.json
  def index
    @ahas = Aha.all
    @aha = Aha.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ahas }
    end
  end

  # GET /ahas/1
  # GET /ahas/1.json
  def show
    @aha = Aha.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aha }
    end
  end

  # GET /ahas/new
  # GET /ahas/new.json
  def new
    @aha = Aha.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aha }
    end
  end

  # GET /ahas/1/edit
  def edit
    @aha = Aha.find(params[:id])
    
    respond_to do |format|
      format.html { render 'edit' }
      format.js { render 'edit' }
    end  
  end

  # POST /ahas
  # POST /ahas.json
  def create
    @aha = Aha.new(params[:aha])

    respond_to do |format|
      if @aha.save
        format.js { render 'create' }
        format.html { redirect_to root_url, notice: 'Aha was successfully created.' }
        format.json { render json: @aha, status: :created, location: @aha }
      else
        format.html { render action: "new" }
        format.json { render json: @aha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ahas/1
  # PUT /ahas/1.json
  def update
    @aha = Aha.find(params[:id])

    respond_to do |format|
      if @aha.update_attributes(params[:aha])
        format.html { redirect_to root_url, notice: 'Aha was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ahas/1
  # DELETE /ahas/1.json
  def destroy
    @aha = Aha.find(params[:id])
    @aha.destroy

    respond_to do |format|
      format.js
      format.html { redirect_to ahas_url }
      format.json { head :no_content }
    end
  end
end
