class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def index
    @chatrooms = Chatroom.all
    if params[:query].present?
      sql_query = "first_name ILIKE :query OR username ILIKE :query OR language ILIKE :query OR last_name ILIKE :query"
      @chatrooms = User.where(role: "Coder").where(sql_query, query: "%#{params[:query]}%")
    else
      @chatrooms
    end
  end
end
