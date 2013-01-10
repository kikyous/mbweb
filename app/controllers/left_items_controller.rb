class LeftItemsController < ApplicationController
  before_filter :authenticate_admin!, :except => [:index,:show]
  # GET /left_items
  # GET /left_items.json
  def index
    @left_items = LeftItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @left_items }
    end
  end

  # GET /left_items/1
  # GET /left_items/1.json
  def show
    @left_item = LeftItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @left_item }
    end
  end

  # GET /left_items/new
  # GET /left_items/new.json
  def new
    @left_item = LeftItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @left_item }
    end
  end

  # GET /left_items/1/edit
  def edit
    @left_item = LeftItem.find(params[:id])
  end

  # POST /left_items
  # POST /left_items.json
  def create
    @left_item = LeftItem.new(params[:left_item])

    respond_to do |format|
      if @left_item.save
        format.html { redirect_to @left_item, notice: 'Left item was successfully created.' }
        format.json { render json: @left_item, status: :created, location: @left_item }
      else
        format.html { render action: "new" }
        format.json { render json: @left_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /left_items/1
  # PUT /left_items/1.json
  def update
    @left_item = LeftItem.find(params[:id])

    respond_to do |format|
      if @left_item.update_attributes(params[:left_item])
        format.html { redirect_to @left_item, notice: 'Left item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @left_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /left_items/1
  # DELETE /left_items/1.json
  def destroy
    @left_item = LeftItem.find(params[:id])
    @left_item.destroy

    respond_to do |format|
      format.html { redirect_to left_items_url }
      format.json { head :no_content }
    end
  end
end
