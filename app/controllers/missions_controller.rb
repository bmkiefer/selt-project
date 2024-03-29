class MissionsController < ApplicationController

  def show
    id = params[:id] # retrieve level ID from URI route
    user_id = params[:user_id]
    level_id = params[:level_id]
    submission_id = params[:submission_id]
    @user = User.find(user_id)
    @level = Level.find(level_id)
    @mission = Mission.find(id)
    @submission = Submission.find_by_mission_id(id)
    @transaction = Transactionmission.find_by_level_id_and_user_id_and_mission_id(@level.id,@user.id,@mission.id)
    @submission_response = SubmissionResponse.find_by_user_id_and_submission_id(@user.id, @submission.id)
    # will render app/views/level/show.<extension> by default
  end

  def index
    #@users = User.all
  end

  def new
    # default: render 'new' template
  end

  def create
    #@user = User.create!(params[:user])
    #flash[:notice] = "#{@user.username} was successfully added."
    #redirect_to users_path
  end

  def edit
    #@user = User.find params[:id]
  end

  def update
    #@user = User.find params[:id]
    #@user.update_attributes!(params[:user])
    #flash[:notice] = "#{@user.username} was successfully updated."
    #redirect_to user_path(@user)
  end

  def destroy
    #@user = User.find(params[:id])
    #@user.destroy
    #flash[:notice] = "User '#{@user.username}' deleted."
    #redirect_to users_path
  end

end
