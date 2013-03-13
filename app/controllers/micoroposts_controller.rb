class MicoropostsController < ApplicationController
  # GET /micoroposts
  # GET /micoroposts.json
  def index
    @micoroposts = Micoropost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @micoroposts }
    end
  end

  # GET /micoroposts/1
  # GET /micoroposts/1.json
  def show
    @micoropost = Micoropost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @micoropost }
    end
  end

  # GET /micoroposts/new
  # GET /micoroposts/new.json
  def new
    @micoropost = Micoropost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @micoropost }
    end
  end

  # GET /micoroposts/1/edit
  def edit
    @micoropost = Micoropost.find(params[:id])
  end

  # POST /micoroposts
  # POST /micoroposts.json
  def create
    @micoropost = Micoropost.new(params[:micoropost])

    respond_to do |format|
      if @micoropost.save
        format.html { redirect_to @micoropost, notice: 'Micoropost was successfully created.' }
        format.json { render json: @micoropost, status: :created, location: @micoropost }
      else
        format.html { render action: "new" }
        format.json { render json: @micoropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /micoroposts/1
  # PUT /micoroposts/1.json
  def update
    @micoropost = Micoropost.find(params[:id])

    respond_to do |format|
      if @micoropost.update_attributes(params[:micoropost])
        format.html { redirect_to @micoropost, notice: 'Micoropost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @micoropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micoroposts/1
  # DELETE /micoroposts/1.json
  def destroy
    @micoropost = Micoropost.find(params[:id])
    @micoropost.destroy

    respond_to do |format|
      format.html { redirect_to micoroposts_url }
      format.json { head :no_content }
    end
  end
end
