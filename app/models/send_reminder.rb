class SendReminder < ActiveJob::Base
  queue_as :default
 
  def perform(*params)
		text = TextMessage.new
		text.send_sms
    # Do something later
  end
end


# for a cron job, once a day run a rake task
	# the task would go through the DB and enqueue each user's reminder
	