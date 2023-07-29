class ApplicationController < ActionController::Base

    include Pagy::Backend

    private

    def logged_in 
        if !user_signed_in?
            redirect_to new_user_session_path, alert: "Debes iniciar sesión." 
        end
    end

    def check_user_role
        if user_signed_in?
            user = current_user
            if user.role == 1
                redirect_to root_path, alert: "No tienes permiso para estas acciones."
            end
        else 
           redirect_to new_user_session_path, alert: "Debes iniciar sesión." 
        end
    end

end
