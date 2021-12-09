class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
  def create
    volunteer = Volunteer.find(params[:chatroom][:volunteer_id])
    student = current_user.student
    chatroom = Chatroom.find_or_create_by(volunteer: volunteer, student: student)
    redirect_to chatroom_path(chatroom)
  end

end
