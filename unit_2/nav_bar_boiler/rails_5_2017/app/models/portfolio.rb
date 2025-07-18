class Portfolio < ApplicationRecord
	validates_presence_of :title, :body, :main_image, :thumb_image

	def self.angular
		where(subtitle: 'Angular')
	end
	# same as above but with lamba
	scope :ruby_on_rails, -> { where(subtitle: "Ruby on Rails")}
end
