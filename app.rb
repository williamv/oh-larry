def prompt()
  print "< "
end

def start()
  puts "Your job is to walk Lawrence to the dog park."
  puts "You walk out the front door and it's time to choose the route. Do you go left or right?"

  prompt; next_move = gets.chomp

  if next_move.include? "left"
  	puts "Lawrence goes to the planter and does his business."
  	puts "You continue walking past Compare."
  	classon_or_stmarks()
  elsif next_move.include? "right"
  	elevated_train()
  else
    clueless() 
  end
end

def classon_or_stmarks()
  puts "You get to the intersection next to the diner. Do you go down Classon or keep going on St Marks?"

  prompt; next_move = gets.chomp.downcase

  if next_move.include? "classon"
  	puts "Good call. You made it to Classon before school starts so it's not crowded."
  	eastern_parkway()
  elsif next_move.include? ("mark")
  	puts "Bad move chump. You hit the boneyard and have to dig chicken wings out of his throat."
  	game_over()
  else
  	clueless()
  end
end

def elevated_train
  puts "You walked right and hear the S train coming. How quickly do you walk (mph)?"

  prompt; walking_pace = gets.chomp.to_i

  if walking_pace >= 4
	puts "You hear the woosh of the train behind you."
	eastern_parkway()
  elsif walking_pace < 4
	game_over()
  else
  	clueless()
  end
end

def eastern_parkway()
  puts "You're on tree lined eastern parkway."
  puts "What side of the street do you want to walk on?"

  prompt; street_side = gets.chomp.downcase

  if street_side.include? "left"
	puts "You have no problems and get to Mount Prospect quickly."
	mount_prospect()
  elsif street_side.include? "right"
	puts "As you walk along the apartments, the subway rolls underneath and he spazzes a bit."
	game_over()
  else
	clueless()
  end
end

def mount_prospect()
  puts "You make it to mount prospect. Did you bring treats?"

  prompt; have_treats = gets.chomp.downcase

  if have_treats.include? "y"
  	puts "You have a great time at the park with the little buddy."
  	puts "He's a dream on the walk all the way home."
  elsif have_treats.include? "n"
  	puts "You have an okay time and only get him back on the leash after he rolls in trash."
  	game_over()
  else
  	clueless()
  end
end

def clueless()
  puts "I have no idea what you mean. Try again."
end

def game_over()
  puts "The crazy munchkin has to go home. Oh, Larry!"
end

start()