class CountChannel < ApplicationCable::Channel
  def subscribed
    stream_from "count-#{params[:countId]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
