require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end


get("/rock") do

  moves = ["rock","paper","scissors"]

  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "We Tied!"
  end
  if @comp_move == "scissors"
    @outcome = "You Won!"
  end
  if @comp_move == "paper"
    @outcome = "You Lost!"
  end
  erb(:rock)
end

get("/scissor") do

  moves = ["rock","paper","scissors"]

  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "You Lost!"
  end
  if @comp_move == "scissors"
    @outcome = "We Tied!"
  end
  if @comp_move == "paper"
    @outcome = "You Won!"
  end
  erb(:scissor)
end

get("/paper") do

  moves = ["rock","paper","scissors"]

  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "You Won!"
  end
  if @comp_move == "scissors"
    @outcome = "You Lost!"
  end
  if @comp_move == "paper"
    @outcome = "We Tied!"
  end
  erb(:paper)
end
