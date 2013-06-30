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

  if next_move.include?("class")
  	puts "Good call. You made it to Classon before all the kids start going to school."
  	eastern_parkway()
  elsif ["mark", "st","saint"].any? {|string| next_move.include?(string)}
  	puts "Bad move chump. You hit the boneyard and have to dig chicken wings out of his mouth."
  	game_over()
  else
  	clueless()
  end
end

def elevated_train
  puts "You walked right and hear the elevated S train coming. How quickly do you walk (mph)?"

  prompt; walking_pace = gets.chomp.to_i

  if walking_pace >= 4
	  puts "You hear the woosh of the train behind you. Lawrence is calm"
	  eastern_parkway()
  elsif walking_pace < 4
    puts "You walked too slowly! The train is immediately overhead and Lawrence freaks out."
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
  puts "You make it to the Mount Prospect dog park. Did you bring treats?"

  prompt; have_treats = gets.chomp.downcase

  if have_treats.include? "y"
  	puts "You have a great time at the park with the little buddy and his friends:"
    new_dog()
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

def new_dog()
  dog_park_dogs = ['Lawrence','Patty','Cara']
  dog_park_dogs.each do |dog|
    puts "#{dog} is at the park with you"
  end

  puts "A stray joins the pack and you want to name him. What should you call him?"
  prompt; stray_dog_name = gets.chomp.capitalize
  dog_park_dogs.push(stray_dog_name)
  
  puts "Here are all the dogs here now:"
  dog_park_dogs.each do |dog|
    puts "#{dog} is at the park with you"
  end
end 

start()