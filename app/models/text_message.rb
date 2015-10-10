class TextMessage
	
 
# put your own credentials here 
account_sid = ENV['account_sid'] 
auth_token = ENV['auth_token'] 
 
# set up a client to talk to the Twilio REST API 
@client = Twilio::REST::Client.new account_sid, auth_token 
 
@client.account.messages.create({
	:from => '+19292519335', 
	:to => '3475817676', 
	:body => 'Hi',  
})
end