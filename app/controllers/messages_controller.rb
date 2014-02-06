class MessagesController < ApplicationController
  include Mandrill::Rails::WebHookProcessor
  authenticate_with_mandrill_keys! 'YOUR_MANDRILL_WEBHOOK_KEY'

  def index
  end

  def show
  end

  def create
  end
end
