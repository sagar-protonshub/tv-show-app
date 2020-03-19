class NotificationMailer < ApplicationMailer

def send_notification(favourite)
	@favourite = favourite
	mail(to: @favourite.user.email,bcc: [@favourite.user.email,"Notification for the show"])	
end
end