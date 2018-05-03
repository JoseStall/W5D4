class SessionController < ApplicationController
  def new
  	 
  end

  def create
  	   @user = User.find_by(id: params[:session][:id])
  	   
    if @user != nil
    	puts 'je suis connecté'
    	# Log the user in and redirect to the user's show page.
   else
       flash[:danger] = 'ID non valide'
     # Create an error message.
     puts 'ID non valide'
     render 'new'
   end
  end

  def destroy
  end
end
