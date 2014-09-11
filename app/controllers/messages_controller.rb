class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def new
    @contacts = Contact.all
    @message = Message.new
  end

  def create
    @phones = message_params[:to].slice(0..-2)
    @phones.each do |phone|
    @message = Message.new(to: phone, from: message_params[:from], body: message_params[:body])
    
    if @message.save
      flash[:notice] = "Your message was sent!"
      redirect_to messages_path
    else
      render 'new'
    end
  end
  end

  def show
    @message = Message.find(params[:id])
  end

private

  def message_params
    params.require(:message).permit({to: []}, :from, :body)

  end
end
