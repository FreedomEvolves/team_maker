class WelcomeController < ApplicationController
include WelcomeHelper

  def index
  end
  
  def about
  end

  def teamlists
    
   	name = params[:name]
   	teams = params[:teams]
  	@students = Student.all
  	@teamxs = TeamName.all

    @players = []
    list_maker @students, @players

    @teamnames = []
    team_maker @teamxs, @teamnames

    roster_maker @players, @teamnames
 
  end 
end 


 

