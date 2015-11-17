class TextMessage
	TWILIO_NUMBER = "+19292519335"
	attr_accessor :to, :body

	def initialize(to, body)
		@to = to
		@body = body
	end
	
# @client.account.messages.create({
# 	:from => '+19292519335', 
# 	:to => '3475817676', 
# 	:body => 'Hi',  
# })
	
	def twilio_client
		@client ||= Twilio::REST::Client.new(ENV['account_sid'], ENV['auth_token'])
	end

	def send_sms
		twilio_client.account.messages.create({
			to: to,
			from: TWILIO_NUMBER,
			body: body
		})
	end

end

# TextMessage.new(params).send_sms