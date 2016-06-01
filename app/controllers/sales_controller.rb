class SalesController < ApplicationController
  def show
   @sale = Sale.find(params[:id])
  end

  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.new(sale_params)
    if @sale.save
      redirect_to @sale
    else
      render 'new'
    end
  end

  private

  def sale_params
    params.require(:sale).permit(:email, :password,
                                 :password_confirmation)
  end
end
