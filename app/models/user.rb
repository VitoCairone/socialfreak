class User < ActiveRecord::Base
	class << self
		def from_omniauth(auth_hash)
			user = find_or_create_by(uid: auth_hash['uid'], provider: auth_hash['provider'])
			user.name = auth_hash['info']['name']
			user.location = auth_hash['info']['location']
			user.image_url = auth_hash['info']['image']
			user.url = auth_hash['info']['urls']['Twitter']
			user.save!
			# in a REAL app should check for and handle failure to save
			user
		end
	end
end
