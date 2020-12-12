class Helpers

    def self.current_user(session={})
        if @current_user
            @current_user
        else 
            @current_user = User.find_by(id: session[:user_id])
        end
    end 

    def self.is_logged_in?(session={})
        !!session[:user_id]
    end 

end