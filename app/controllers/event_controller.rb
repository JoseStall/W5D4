class EventController < ApplicationController
  def new
  	@event =Event.new
  end

  def create
  	@event = Event.new
  	@event.description = params[:event][:description]
  	@event.date = params[:event][:date]
  	@event.place = params[:event][:place]
  	@event.creator_id = 6
  	@event.save
  	puts 'voila les params'
  	puts params
  	puts 'session'
  	puts params[:session]
  	puts @current_user


  end

  def show
  	@event = Event.all
  	@user = User.all
  end
    def showid
  	@event = Event.find(params[:id])
  	@user = User.all
  	
  end
end
