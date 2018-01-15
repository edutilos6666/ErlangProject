%%%-------------------------------------------------------------------
%%% @author edutilos
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. Jan 2018 20:28
%%%-------------------------------------------------------------------
-module(example2).
-author("edutilos").

%% API
-export([main/0]).


main() ->
  io:fwrite("hello world from example2."),
  test_arithmetic().


test_arithmetic() ->
  X = 10,
  Y = 3,
  Add_result = add(X, Y),
  Sub_result = sub(X,Y),
  Mul_result = mul(X,Y),
  Divide_result = divide(X,Y),
  io:fwrite("X = ~p and Y = ~p\n", [X, Y]),
  io:fwrite("X + Y = ~p\n", [Add_result]),
  io:fwrite("X - Y = ~p\n", [Sub_result]),
  io:fwrite("X * Y = ~p\n", [Mul_result]),
  io:fwrite("X / Y = ~p\n", [Divide_result]).

add(X, Y) ->
  X + Y.

sub(X,Y) ->
  X - Y.

mul(X, Y) ->
  X * Y.

divide(X, Y) ->
  X / Y.

