class UsersController < ApplicationController
  def index
	@user = User.all 

    respond_to do |format|
      format.html
      format.xml { render :xml => @user }
    end 
  end
  def show
    @user = User.all

    respond_to do |format|
      format.html
      format.xml { render :xml => @user }
    end 
  end
  def new
    @user = User.new 
    respond_to do |format|
      format.html 
      format.xml { render :xml => @user }
    end 
  end


  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "You signed up successfully"
      flash[:color]= "valid"
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
    end
    # render "new"
    respond_to do |format|
      format.html { redirect_to @user, notice: 'successfully' }
      format.json { head :up}
    end
  end

  def edit
    @user = User.find(params[:id])
  end


  def destroy

    @user = User.find(params[:id])
    @user.destroy

   respond_to do |format|
      format.html { redirect_to user_url, notice: 'Your cart is currently empty' }
      format.json { head :no_content }
    end
    
  end
end
