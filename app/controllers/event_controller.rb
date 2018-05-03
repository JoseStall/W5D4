class EventController < ApplicationController
  def new
  	@event =Event.new
  end

  def create
  	@event = Event.new
  	@event.description = params[:event][:description]
  	@event.date = params[:event][:date]
  	@event.place = params[:event][:place]
  	@event.creator_id = session[:user_id]
  	@event.save
 
  end

  def show
  	@event = Event.all
  	@user = User.all
  end
    def showid
  	@event = Event.find(params[:id])
  	@user = User.all
  	
  end

  	def create_event_user
  	puts 'id event'
  	puts params[:id]
  	puts 'id_user'
  	puts session[:user_id]
  	@events_users = Events_users.new
  	@events_users.event_id = params[:id]
  	@events_users.user_id = session[:user_id]
  	@events_users.save
  	redirect_to event_show
  	end
end
