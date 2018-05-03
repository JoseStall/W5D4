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
  	@b = @event.users
  	@b.each do |u|
  		puts u.name
  	end

  end

  	def create_event_user
  	puts 'id event'
  	a = Event.find(params[:id])
  	puts a.description
  	puts 'id_user'
  	b = User.find(session[:user_id])
  	puts b.name
  	puts session[:user_id]
  	a.users << b
  	redirect_to '/event/show'
  end

end
