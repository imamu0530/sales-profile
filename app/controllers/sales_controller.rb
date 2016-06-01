class SalesController < ApplicationController
before_action :set_sale, only: [:edit,:update]
before_action :check_sale,only: [:edit, :update]

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

  def edit
    @sale = Sale.find(params[:id])
  end

  def update
    if @sale.update(sale_params)
      # 保存に成功した場合はトップページへリダイレクト
      redirect_to edit_sale_path
    else
      # 保存に失敗した場合は編集画面へ戻す
      render 'edit'
    end
  end

  private

  def sale_params
    params.require(:sale).permit(:email, :password,
                                 :password_confirmation, :name, :pr)
  end

  def set_sale
    @sale = Sale.find(params[:id])
  end

  def check_sale
    unless current_sale == @sale
      redirect_to root_path
    end
  end

end
