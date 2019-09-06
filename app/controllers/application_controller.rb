class ApplicationController < ActionController::Base
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
