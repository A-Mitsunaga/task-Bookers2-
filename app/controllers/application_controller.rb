class ApplicationController < ActionController::Base
 before_action :configure_permitted_parameters, if: :devise_controller?

# 下記追記
 def after_sign_in_path_for(resource)
   books_path

 end
# ここまで

 protected

 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
 end

end
