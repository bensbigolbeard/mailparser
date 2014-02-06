class Message < ActiveRecord::Base

  def self.save_inbound_message(contents)
    contents.each do |message|
      self.create(sender: message[:sender], recipient: message[:email], title: message[:subject])
    end
  end
end
