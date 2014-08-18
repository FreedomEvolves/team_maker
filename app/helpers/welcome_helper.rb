module WelcomeHelper

  def roster_maker
    rand_players = []
    rand_players = @players.shuffle

    stop = @players.length/teamnames.length
    add = (players.length - (stop * teamnames.length))

    teamlist = []
    (1..stop).each do
       teamnames.each do |name|
          teamlist.push(name)
       end
    end

    i = 0
    while i < add
       teamlist.push(teamnames[i])
       i = i + 1
    end

    sorted_list = []
    sorted_list = teamlist.sort

    roster1 = {}
    rand_players.each_with_index {|k,i|roster1[k] = sorted_list[i]}
    return roster1
  end
end