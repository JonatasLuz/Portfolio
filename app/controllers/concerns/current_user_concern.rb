module CurrentUserConcern
	extend ActiveSupport::Concern
	def current_user
		super || guest_user
	end

	def guest_user
		guest = GuestUser.new
		guest.name ="Usuario Convidado"
		guest.first_name = "Usuario"
		guest.last_name = "Convidado"
		guest.email = "convidado@exemplo.com"
		guest
	end
end