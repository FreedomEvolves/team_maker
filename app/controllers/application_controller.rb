class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end


#def teams 
	
#	students=%w[harry joe shelby kim pete gabriella lucy mary luke macy]
#	teamnames=%w[Astros Hawks Muskrats]
#	num_students = students.length

#	newlist = []
#	newlist = students.shuffle

#	roster = []
#		(1..num_students).each do 
 #		teamnames.each do |name|
 #  	roster.push(name)
 	#	end
	#end

	#stop = num_students - 1
	#i = 0
	#	(0..stop).each do |i|
 		#puts roster[i].to_s + '  ' + newlist[i].to_s
 		#i += i
	#end

