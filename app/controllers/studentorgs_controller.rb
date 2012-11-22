class StudentorgsController < ApplicationController
  # GET /studentorgs
  # GET /studentorgs.json
  def index
    @studentorgs = Studentorg.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @studentorgs }
    end
  end

  # GET /studentorgs/1
  # GET /studentorgs/1.json
  def show
    @studentorg = Studentorg.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @studentorg }
    end
  end

  # GET /studentorgs/new
  # GET /studentorgs/new.json
  def new
    @studentorg = Studentorg.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @studentorg }
    end
  end

  # GET /studentorgs/1/edit
  def edit
    @studentorg = Studentorg.find(params[:id])
  end

  # POST /studentorgs
  # POST /studentorgs.json
  def create
    @studentorg = Studentorg.new(params[:studentorg])

    respond_to do |format|
      if @studentorg.save
        format.html { redirect_to @studentorg, notice: 'Studentorg was successfully created.' }
        format.json { render json: @studentorg, status: :created, location: @studentorg }
      else
        format.html { render action: "new" }
        format.json { render json: @studentorg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /studentorgs/1
  # PUT /studentorgs/1.json
  def update
    @studentorg = Studentorg.find(params[:id])

    respond_to do |format|
      if @studentorg.update_attributes(params[:studentorg])
        format.html { redirect_to @studentorg, notice: 'Studentorg was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @studentorg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studentorgs/1
  # DELETE /studentorgs/1.json
  def destroy
    @studentorg = Studentorg.find(params[:id])
    @studentorg.destroy

    respond_to do |format|
      format.html { redirect_to studentorgs_url }
      format.json { head :no_content }
    end
  end
end
