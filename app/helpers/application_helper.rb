module ApplicationHelper
	def login_helper
	 if current_user.first_name!="Convidado"
     	link_to "Logout", destroy_user_session_path, method: :delete 
     else  
     	(link_to "Registre-se", new_user_registration_path) +
     	(link_to "Login", new_user_session_path)
     end  
	end
end
