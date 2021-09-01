class TournamentsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def saveTournamentResults
    #byebug
    
    #TODO: adding validation to the models
    tournament = Tournament.new

    tournament.tournament_id = params["tournamentId"]
    tournament.start_date = params[:startDate]
    tournament.end_date = params[:endDateTime]
    results = params[:results]
    results.each do |i|
      player = Player.new
      player.user_id = i[:userId]
      player.correct_questions = i[:correctQuestions]
      player.incorrent_questions = i[:incorrectQuestions]
      player.tournament_id = tournament.tournament_id
      player.save
    end
    tournament.save

 end 
 def getTournamentResults
  results = Player.where("tournament_id=?", params["tournamentId"])
  respond_to do |format|
   format.json {render json: results }
  end
 end

 def fetchSuccessPerQuestion
  @results = Player.where("tournament_id=?", params["tournamentId"])
  puts @results
  
 end


end

