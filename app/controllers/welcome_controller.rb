class WelcomeController < ApplicationController
#include WelcomeHelper

  def index
  end

<<<<<<< HEAD
end
=======
  def teamlists
   	name = params[:name]
   	teams = params[:teams]
  	@students = Student.all
  	@teamxs = TeamName.all

    @players = []
    @students.each do |student|
       @players.push(student.name)
     end  
    @teamnames = []
    @teamxs.each do |x|
       @teamnames.push(x.teams)
     end  

 # 	def roster_maker
    rand_players = []
    rand_players = @players.shuffle

    stop = @players.length/@teamnames.length
    add = (@players.length - (stop * @teamnames.length))

    teamlist = []
    (1..stop).each do
       @teamnames.each do |name|
          teamlist.push(name)
       end
    end

    i = 0
    while i < add
       teamlist.push(@teamnames[i])
       i = i + 1
    end

    sorted_list = []
    sorted_list = teamlist.sort

    @roster = {}
    rand_players.each_with_index {|k,i|@roster[k] = sorted_list[i]}
    puts @roster
    return @roster
  end
end

 
>>>>>>> 65b6b928650c17add21cb5474a5260f5e991d4e5
