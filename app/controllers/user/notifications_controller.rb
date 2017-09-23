class User::NotificationsController < ApplicationController
  
  
  
  # set access roles
  access user: {except: [:destroy, :new, :create, :update, :edit]}
  
  # GET /user/news/:notificationtype_id
  def index
    @notifications = Notification.all.page(params[:page]).per(3)
    @notificationtypes = Notificationtype.all
    @notificationtype = @notificationtypes.find(params[:notificationtype_id])
    @notifications_per_type = @notificationtype.notifications.page(params[:page]).per(3)
  end
  
  
  def show
    @notification =  Notification.find(params[:notification_id])
  end
end