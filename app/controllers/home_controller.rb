class HomeController < ApplicationController
  before_filter :authenticate_admin!, :only => [:admin]
  def index
    @left_items = LeftItem.all
    @slide_items = SlideItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @left_items }
    end
  end
  def admin
  end
end
