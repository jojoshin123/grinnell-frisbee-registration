module SessionsHelper

    # logs in the captain
    def log_in(captain)
        session[:captain_id] = captain.id # creates session & cookies for captain user
    end

    # Returns the current logged-in captain if any
    def current_captain
        if session[:captain_id]
            @current_captain = @current_captain || Captain.find_by(id: session[:captain_id])
        end
    end

    # Returns true if a captain is logged in
    def logged_in?
        return !current_captain.nil?
    end
end
