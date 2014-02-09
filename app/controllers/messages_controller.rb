class MessagesController < ApplicationController
  # include Mandrill::Rails::WebHookProcessor
  # authenticate_with_mandrill_keys! ENV["MANDRILL_WEBHOOK_KEY"]

  # def handle_inbound(event_payload)
  #   Message.save_inbound_message(event_payload)
  # end

  respond_to :json

  protect_from_forgery

  skip_before_filter :verify_authenticity_token, :only => [:create]

  def index
  end

  def show
  end

  def create
    @message = Message.create(title: params[:title], body: params[:body], sender: params[:sender], recipient: params[:recipient])
    # if @message.save
      # respond_with(@message) do |format|
      #   format.json{render :json => @message, :status => :created, :location => @message}
      # end
    # end
    # respond_with(@message).json(render :json => @message.as_json)
    redirect_to :root
  end

  private

    # def messages_params
    #   params.require(:message).permit(:message, :title, :body, :sender, :recipient)
    # end
end
