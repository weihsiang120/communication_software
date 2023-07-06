class ChatroomController < ApplicationController
  def index
    @messages=Message.all
  end
  def speak
		ActionCable.server.broadcast('chat_channel', params[:speak_content])
    @message=Message.create(type_:"string",chatroom_id:1,member_id:1,content:params[:speak_content])
	end
end
