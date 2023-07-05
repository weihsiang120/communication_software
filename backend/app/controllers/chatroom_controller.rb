class ChatroomController < ApplicationController
  def index
  end
  def speak
		ActionCable.server.broadcast('chat_channel', params[:speak_content])
	end
end
