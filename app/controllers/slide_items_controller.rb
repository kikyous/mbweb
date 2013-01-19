class SlideItemsController < ApplicationController
  before_filter :authenticate_admin!, :except => [:index,:show]
  # GET /slide_items
  # GET /slide_items.json
  def index
    @slide_items = SlideItem.all

    respond_to do |format|
      format.html { render layout: params[:layout]!='false' }
      format.json { render json: @slide_items }
    end
  end

  # GET /slide_items/1
  # GET /slide_items/1.json
  def show
    @slide_item = SlideItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @slide_item }
    end
  end

  # GET /slide_items/new
  # GET /slide_items/new.json
  def new
    @slide_item = SlideItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @slide_item }
    end
  end

  # GET /slide_items/1/edit
  def edit
    @slide_item = SlideItem.find(params[:id])
  end

  # POST /slide_items
  # POST /slide_items.json
  def create
    @slide_item = SlideItem.new(params[:slide_item])

    respond_to do |format|
      if @slide_item.save
        format.html { redirect_to @slide_item, notice: 'Slide item was successfully created.' }
        format.json { render json: @slide_item, status: :created, location: @slide_item }
      else
        format.html { render action: "new" }
        format.json { render json: @slide_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /slide_items/1
  # PUT /slide_items/1.json
  def update
    @slide_item = SlideItem.find(params[:id])

    respond_to do |format|
      if @slide_item.update_attributes(params[:slide_item])
        format.html { redirect_to @slide_item, notice: 'Slide item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @slide_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slide_items/1
  # DELETE /slide_items/1.json
  def destroy
    @slide_item = SlideItem.find(params[:id])
    @slide_item.destroy

    respond_to do |format|
      format.html { redirect_to slide_items_url }
      format.json { head :no_content }
    end
  end
end
