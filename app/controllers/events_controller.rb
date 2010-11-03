class EventsController < ApplicationController
  
  before_filter :admin_user,   :only => [:new, :create, :edit, :update, :destroy]

  def new
    @event = Event.new
    @title = "Create new event"
  end

  def index
    @events = Event.paginate(:page => params[:page])
    @title = "Events Listing"
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
  end

  def update
  end

  def destroy
  end

  def show
  end

  private 

    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end

end
