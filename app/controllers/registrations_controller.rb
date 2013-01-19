class RegistrationsController < Devise::RegistrationsController
  def edit
    render :edit ,:layout => params[:layout]!='false'
  end
end
