class SessionController < ApplicationController
  def new
  	 
  end

  def create
  	   user = User.find_by(id: params[:session][:id])
       puts user
  	   
    if user 
    	puts 'je suis connecté'
      log_in user
      redirect_to user

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
