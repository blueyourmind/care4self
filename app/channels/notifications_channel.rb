class NotificationsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "notification_channel_#{current_user.id}"
  end

  def unsubscribed
    # Any cleanup needed when the channel is unsubscribed
  end
end
