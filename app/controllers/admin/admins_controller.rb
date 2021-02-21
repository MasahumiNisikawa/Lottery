class Admin::AdminsController < ApplicationController
    before_action :authenticate_admin_operator!
    

    layout 'admin'

    def after_sign_in_path_for(resource)
      admin_operators_root_path
    end
    
    def after_sign_out_path_for(resource)
      admin_operators_root_path
    end
    
    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_in, keys: [:name,:password])
    end

   

end
