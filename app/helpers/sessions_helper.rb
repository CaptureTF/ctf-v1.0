module SessionsHelper

    def log_in(user)
<<<<<<< HEAD
        session[:user] = user
=======
        session[:user_id] = user.id
>>>>>>> basic-login
    end

    def current_user
        if session[:user_id]
            @current_user ||= User.find_by(id: session[:user_id])
        end
    end

    def logged_in?
        !current_user.nil?
    end

    def log_out
        session.delete(:user_id)
        @current_user = nil
    end
end
