class Helpers
    def self.current_user(session)
        @current_user = User.find_by(id: session[:user_id])
        @current_user
    end

    def self.is_logged_in?(session)
        !!User.find_by(id: session[:user_id])
    end
end