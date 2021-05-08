class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    stored_location_for(resource) || authed_dieta_path
  end

  def after_sign_out_path_for(_resource)
    root_path
  end

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Você não tem acesso a informações de outros usuários"
    redirect_back(fallback_location: root_path, alert: "you don't have permission", status: 303)
  end
end
