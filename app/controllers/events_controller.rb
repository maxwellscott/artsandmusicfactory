class EventsController < ApplicationController
  
  before_filter :admin_user,   :only => [:new, :create, :edit, :update, :destroy]
  
  def new
    @event = Event.new
    @title = "Create new event"
  end

  def index
    @events = Event.paginate(:page => params[:page])
    @title = "Roster"
  end

  def create
    @event = Event.new(params[:event])
    if @event.save
      flash[:notice] = "Event #{@event.performer} was successfully created."
      redirect_to :action => "index"
    else
      @page_title = 'Create new event'
      render :action => 'new'
    end
  end

  def edit
    @title = "Edit event"
    @event =  Event.find(params[:id])
  end

  def update
    if @event.update_attributes(params[:event])
      flash[:success] = "Profile updated."
      redirect_to @event
    else
      @title = "Edit event"
      render 'edit'
    end
  end

  def destroy
    Event.find(params[:id]).destroy
    flash[:success] = "Event destroyed."
    redirect_to events_path
  end

  def show
    @event = Event.find(params[:id])
    @title = @event.name
  end

  private 

    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end

end
