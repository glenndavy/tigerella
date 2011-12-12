class DayListsController < ApplicationController
  # GET /day_lists
  # GET /day_lists.json
  def index
    @day_lists = DayList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @day_lists }
    end
  end

  # GET /day_lists/1
  # GET /day_lists/1.json
  def show
    @day_list = DayList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @day_list }
    end
  end

  # GET /day_lists/new
  # GET /day_lists/new.json
  def new
    @day_list = DayList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @day_list }
    end
  end

  # GET /day_lists/1/edit
  def edit
    @day_list = DayList.find(params[:id])
  end

  # POST /day_lists
  # POST /day_lists.json
  def create
    @day_list = DayList.new(params[:day_list])

    respond_to do |format|
      if @day_list.save
        format.html { redirect_to @day_list, notice: 'Day list was successfully created.' }
        format.json { render json: @day_list, status: :created, location: @day_list }
      else
        format.html { render action: "new" }
        format.json { render json: @day_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /day_lists/1
  # PUT /day_lists/1.json
  def update
    @day_list = DayList.find(params[:id])

    respond_to do |format|
      if @day_list.update_attributes(params[:day_list])
        format.html { redirect_to @day_list, notice: 'Day list was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @day_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /day_lists/1
  # DELETE /day_lists/1.json
  def destroy
    @day_list = DayList.find(params[:id])
    @day_list.destroy

    respond_to do |format|
      format.html { redirect_to day_lists_url }
      format.json { head :ok }
    end
  end
end
