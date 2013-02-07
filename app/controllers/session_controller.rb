class SessionController < ApplicationController
  def login
  	if request.post?
  		p_user = Admin.new(params[:admin])
  		user = Admin.find_by_name_and_password(p_user.name, p_user.password)

  		if user
  			session[:admin_id] = user.id
  			flash[:notice] = "se ha identificado correctamente"
  			redirect_to root_path
  		else
  			flash[:notice] = "#{p_user.name} usuario o#{p_user.password} contrasena incorrecta"  			
  		end
  			
  		
  	end


  end

  def logout


  	session[:admin_id] = nil
  	flash[:notice] = "good bye"
  	redirect_to home_url
 
  end
end
