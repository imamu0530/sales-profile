class SessionsController < ApplicationController
  def new
  end

  def create
    @sale = Sale.find_by(email: params[:session][:email].downcase)
    if @sale && @sale.authenticate(params[:session][:password])
      session[:sale_id] = @sale.id
      redirect_to @sale
    else
      flash[:danger] = 'invalid email/password combination'
      render 'new'
    end
  end
  
  def destroy
    session[:sale_id] = nil
    redirect_to login_path
  end
end
