class WelcomeController < ApplicationController
#include WelcomeHelper

  def index
  end

  def teamlists
   	name = params[:name]
   	teams = params[:teams]
  	@players = Student.all
  	@teamnames = TeamName.all

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
return @roster
  end
end

 
