class TextMessage
  # put your own credentials here 
  SID = ENV['account_sid'] 
  TOKEN = ENV['auth_token'] 
  SOURCE_NUMBER = ENV['twilio_source_number']# +19292519335'
  # set up a client to talk to the Twilio REST API 
  CLIENT = Twilio::REST::Client.new(SID, TOKEN)   
  
  attr_accessor :recipient, :body

  def initialize(recipient, body="Empty message")
    @recipient = recipient
    @body = body
  end

  def send_message
    CLIENT.account.messages.create({ # the #create method sends the text
    	:from => SOURCE_NUMBER, 
    	:to => recipient, 
    	:body => body
    })  
  end

end