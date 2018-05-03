class UserController < ApplicationController
  def new
  	@user = User.new

  end

  def create
  	@user = User.new
  	@user.name = params[:user][:name]
  	@user.save

  end

  def show
    @user = User.all
    @events = Event.all
  end

  def showid
  	@user = User.find(params[:id])
  	@event = Event.all
    puts params
    puts params[:session]
    
  end
end
