%%%-------------------------------------------------------------------
%%% @author edutilos
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. Jan 2018 21:07
%%%-------------------------------------------------------------------
-module(decisionMakingExample).
-author("edutilos").

%% API
-export([main/0]).


main() ->
  example1(),
  example2()
  .


% if statement
example1() ->
  Age = 10 ,
  if
    (Age > 0) and (Age < 10) ->
      io:fwrite("You are a kid.\n");
    (Age >= 10) and (Age < 20) ->
      io:fwrite("You are a teenager.\n");
    (Age >= 20) and (Age < 50) ->
      io:fwrite("You are an adult.\n");
    true ->
      io:fwrite("You are an elderly.")
  end.


% case statement
example2() ->
  Grade = "A",
  case Grade of
    "A" -> io:fwrite("You got an A.\n");
    "B" -> io:fwrite("You got a B.\n");
    "C" -> io:fwrite("You got a C.\n");
    "D" -> io:fwrite("You got a D.\n");
    "E" -> io:fwrite("You got an E.\n");
    "F" -> io:fwrite("You failed.\n")
  end.
