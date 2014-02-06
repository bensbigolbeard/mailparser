class MessagesController < ApplicationController
  include Mandrill::Rails::WebHookProcessor
  authenticate_with_mandrill_keys! ENV["MANDRILL_WEBHOOK_KEY"]

  def handle_inbound(event_payload)
    Message.save_inbound_message(event_payload)
  end

  def index
  end

  def show
  end

  def create
  end
end
