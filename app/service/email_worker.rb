class EmailWorker
include Sidekiq::Worker



def perform(action,args)
	send(action,args)
end


def send_notification favourite_id
	favourite = Favourite.find(favourite_id)
	NotificationMailer.send_notification(favourite)
end


end