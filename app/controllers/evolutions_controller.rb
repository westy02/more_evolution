class EvolutionsController < ApplicationController
  # GET /evolutions
  # GET /evolutions.json
  def index
    @evolutions = Evolution.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @evolutions }
    end
  end

  # GET /evolutions/1
  # GET /evolutions/1.json
  def show
    @evolution = Evolution.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @evolution }
    end
  end

  # GET /evolutions/new
  # GET /evolutions/new.json
  def new
    @evolution = Evolution.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @evolution }
    end
  end

  # GET /evolutions/1/edit
  def edit
    @evolution = Evolution.find(params[:id])
  end

  # POST /evolutions
  # POST /evolutions.json
  def create
    @evolution = Evolution.new(params[:evolution])

    respond_to do |format|
      if @evolution.save
        format.html { redirect_to @evolution, notice: 'Evolution was successfully created.' }
        format.json { render json: @evolution, status: :created, location: @evolution }
      else
        format.html { render action: "new" }
        format.json { render json: @evolution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /evolutions/1
  # PUT /evolutions/1.json
  def update
    @evolution = Evolution.find(params[:id])

    respond_to do |format|
      if @evolution.update_attributes(params[:evolution])
        format.html { redirect_to @evolution, notice: 'Evolution was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @evolution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evolutions/1
  # DELETE /evolutions/1.json
  def destroy
    @evolution = Evolution.find(params[:id])
    @evolution.destroy

    respond_to do |format|
      format.html { redirect_to evolutions_url }
      format.json { head :no_content }
    end
  end
end
