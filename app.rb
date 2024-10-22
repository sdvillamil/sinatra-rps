require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end


get("/rock") do

  moves = ["rock","paper","scissors"]

  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "We tied!"
  end
  if @comp_move == "scissors"
    @outcome = "We won!"
  end
  if @comp_move == "paper"
    @outcome = "We lost!"
  end
  erb(:rock)
end

get("/scissor") do

  moves = ["rock","paper","scissors"]

  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "We lost!"
  end
  if @comp_move == "scissors"
    @outcome = "We tied!"
  end
  if @comp_move == "paper"
    @outcome = "We won!"
  end
  erb(:scissor)
end

get("/paper") do

  moves = ["rock","paper","scissors"]

  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "We won!"
  end
  if @comp_move == "scissors"
    @outcome = "We lost!"
  end
  if @comp_move == "paper"
    @outcome = "We tied!"
  end
  erb(:paper)
end
