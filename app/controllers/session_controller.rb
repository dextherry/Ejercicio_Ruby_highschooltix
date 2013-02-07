class SessionController < ApplicationController
  def login
  	

  	@people = Person.all
  	@numberadmin = Admin.all.length
  	
  	if @numberadmin == 0
  		 @firstadmind = Admin.new()
  		 @firstadmind.name ='admin'
  		 @firstadmind.password = 'password'
  		 @firstadmind.save

  	end
  	if request.post?
  		p_user = Admin.new(params[:admin])
  		user = Admin.find_by_name_and_password(p_user.name, p_user.password)

  		if user
  			session[:admin_id] = user.id
  			flash[:notice] = "login ok"
  			redirect_to adm_path
  		else
  			flash[:notice] = "incorrect name or password"  			
  		end
  			
  		
  	end


  end

  def logout


  	session[:admin_id] = nil
  	flash[:notice] = "good bye"
  	redirect_to root_url
 
  end
end
