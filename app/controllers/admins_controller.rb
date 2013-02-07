class AdminsController < ApplicationController
  # GET /admins
  # GET /admins.json
  def index
    if not session[:admin_id]
      redirect_to adm_path
    else
    @admins = Admin.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admins }
    end
  end
  end

  # GET /admins/1
  # GET /admins/1.json
  def show
    if not session[:admin_id]
      redirect_to adm_path
    else
    @admin = Admin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin }
    end
  end
  end

  # GET /admins/new
  # GET /admins/new.json
  def new
    if not session[:admin_id]
      redirect_to adm_path
    else
    @admin = Admin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin }
    end
  end
  end

  # GET /admins/1/edit
  def edit    
    @admin = Admin.find(params[:id])
  end

  # POST /admins
  # POST /admins.json
  def create

    if not session[:admin_id]
      redirect_to adm_path
    else
    @admin = Admin.new(params[:admin])

    respond_to do |format|
      if @admin.save
        format.html { redirect_to @admin, notice: 'Admin was successfully created.' }
        format.json { render json: @admin, status: :created, location: @admin }
      else
        format.html { render action: "new" }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end
  end

  # PUT /admins/1
  # PUT /admins/1.json
  def update
    @admin = Admin.find(params[:id])

    respond_to do |format|
      if @admin.update_attributes(params[:admin])
        format.html { redirect_to @admin, notice: 'Admin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/1
  # DELETE /admins/1.json
  def destroy
    
    @admin = Admin.find(params[:id])
    @admin.destroy
    session[:admin_id] = nil


    respond_to do |format|
      format.html { redirect_to admins_url }
      format.json { head :no_content }
    end
  end
  
end
