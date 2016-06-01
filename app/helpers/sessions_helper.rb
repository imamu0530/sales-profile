module SessionsHelper
  def current_sale
    @current_sale ||= Sale.find_by(id: session[:sale_id])
  end

  def logged_in?
    !!current_sale
  end

  def store_location
    session[:forwarding_url] = request.url if request.get?
  end
end
