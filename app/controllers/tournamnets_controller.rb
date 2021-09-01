class TournamnetsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_tournamnet, only: %i[ show edit update destroy ]


  def saveTournament
    #byebug
    
    #TODO: adding validation to the models
    tournament = Tournamnet.new
    array_of_users =[]

    tournament.tour_id = params["tournamentId"]
    tournament.start_date = params[:startDate]
    tournament.end_date = params[:endDateTime]
    results = params[:results]
    results.each do |i|
      user = User.new
      user.user_id = i[:userId]
      user.correct_questions = i[:correctQuestions]
      user.incorrent_questions = i[:incorrectQuestions]
      array_of_users << user
      
      
    end
    
    tournament.users = array_of_users
    tournament.save
    #puts results
    #puts singleTour

 end 
end

