class ApplicationController < ActionController::Base
	
 protect_from_forgery with: :exception

  helper_method :current_cart

  def current_cart
    if session[:cart_id]
      @cart = Cart.find(session[:cart_id])
    else
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
  end



	private

  def check_admin
    if user_signed_in?
      if current_user.role != '0'
         redirect_to root_path
         flash[:notice] = "管理者のみ閲覧できます"
      end     
    end
  end
end
