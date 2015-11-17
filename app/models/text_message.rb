class TextMessage

	TWILIO_NUMBER = "+19292519335"
	attr_accessor :to, :body
	
  account_sid = ENV['account_sid'] 
  auth_token = ENV['auth_token'] 

	def initialize(to, body)
		@to = to
		@body = body
	end
	
  # set up a client to talk to the Twilio REST API 
  @client = Twilio::REST::Client.new account_sid, auth_token 

# @client.account.messages.create({
# 	:from => '+19292519335', 
# 	:to => '3475817676', 
# 	:body => 'Hi',  
# })
	
	def send_sms
		twilio_client.account.messages.create({
			to: to,
			from: TWILIO_NUMBER,
			body: body
		})
	end

end
   
   
  
end
