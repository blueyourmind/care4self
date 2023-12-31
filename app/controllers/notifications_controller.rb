class NotificationsController < ApplicationController
  before_action :authenticate_user!




  def index
    notifications = Notification.all
    # @notifications = Notification.where("read = ? AND time >= ?", false, Time.current)
 render json: notifications, content_type: 'application/json'
  end

  def create
    @medication = Medication.find(params[:medication_id])
    message = " It's Time to take your #{@medication.med_type} of #{@medication.name}"
    create_medication_notification(current_user.id, message)
    schedule_medication_notification(@medication)
  end



  def destroy
    notification = Notification.find(params[:id])
    notification.destroy
    head :no_content
  end
end

private


def create_medication_notification(user_id, message)
  notification = User.find(user_id).notifications.build(message: message)

  if notification.save
    NotificationBroadcastJob.perform_later("notification_channel_#{user_id}", user_id, message)
  else
    handle_notification_creation_error(notification)
  end
end












