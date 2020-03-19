class Show < ApplicationRecord
	belongs_to :channel
	has_many :favourites

	def channel_name
		self.channel.name
	end
end
