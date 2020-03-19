class Favourite < ApplicationRecord
	belongs_to :user
	belongs_to :show

	after_create :schedule_notification_for_user


	def schedule_notification_for_user
		time = Time.now - (self.show.show_time.to_i*60*60) - 30.minutes
		EmailWorker.perform_at(time,"send_notification",self.id)
	 end 
end
