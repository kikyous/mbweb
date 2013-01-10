class TopItemsController < ApplicationController
  before_filter :authenticate_admin!, :except => [:index,:show]
  # GET /top_items
  # GET /top_items.json
  def index
    @top_items = TopItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @top_items }
    end
  end

  # GET /top_items/1
  # GET /top_items/1.json
  def show
    @top_item = TopItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @top_item }
    end
  end

  # GET /top_items/new
  # GET /top_items/new.json
  def new
    @top_item = TopItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @top_item }
    end
  end

  # GET /top_items/1/edit
  def edit
    @top_item = TopItem.find(params[:id])
  end

  # POST /top_items
  # POST /top_items.json
  def create
    @top_item = TopItem.new(params[:top_item])

    respond_to do |format|
      if @top_item.save
        format.html { redirect_to @top_item, notice: 'Top item was successfully created.' }
        format.json { render json: @top_item, status: :created, location: @top_item }
      else
        format.html { render action: "new" }
        format.json { render json: @top_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /top_items/1
  # PUT /top_items/1.json
  def update
    @top_item = TopItem.find(params[:id])

    respond_to do |format|
      if @top_item.update_attributes(params[:top_item])
        format.html { redirect_to @top_item, notice: 'Top item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @top_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /top_items/1
  # DELETE /top_items/1.json
  def destroy
    @top_item = TopItem.find(params[:id])
    @top_item.destroy

    respond_to do |format|
      format.html { redirect_to top_items_url }
      format.json { head :no_content }
    end
  end
end
