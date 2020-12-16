class Helpers
  
  def self.current_user(session)
    if @user
      @user
    else 
      @user = User.find_by(id: session[:user_id]) 
    end
  end

  def self.is_logged_in?(session)
    !!session[:user_id]
  end
  
end