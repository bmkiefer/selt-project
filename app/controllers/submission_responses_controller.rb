class SubmissionResponsesController < ApplicationController

  def new	
  end

  def index
  end

  def create
    @level = Level.find(params[:level_id])
    @submission_responses = SubmissionResponse.create(:submission_id => params[:submission_id], :user_id => params[:user_id], :rate => params[:submission][:rating])
    @all_questions = Question.find_by_submission_id(params[:submission_id])

    @all_questions.each do |q|
	Question.create(:question => q.id, :submission_response_id => @submission_response.id, :responses => params[:responses])
    end 

    redirect_to user_level_path(@level)
  end

  def edit
  end

  def update
   
  end

  def destroy
  end

  def show
  end
end
