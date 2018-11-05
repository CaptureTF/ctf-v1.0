module SessionsHelper

    def log_in(user)
        session[:user] = user
    end

    def current_user
        if session[:user_id]
            @current_user ||= User.find_by(id: session[:user_ud])
        end
    end

    def logged_in?
        !current_user.nil?
    end
end
