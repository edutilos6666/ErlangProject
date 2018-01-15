%%%-------------------------------------------------------------------
%%% @author edutilos
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. Jan 2018 21:15
%%%-------------------------------------------------------------------
-module(functionsExample).
-author("edutilos").

%% API
-export([main/0]).


main() ->
  example1(),
  example2(),
  example3(10, 3, 4),
  example4()
  .


% higher order function example

example4() ->
  List1 = [1, 2, 3, 4],
  List2 = lists:map(fun (X) -> X * 2 end , List1),
  List3 = lists:map(fun(X) -> X * 3 end , List1) ,
  List4 = lists:map(fun(X) -> X * X *X end , List1),
  io:fwrite("List1 = ~p\n", [List1]),
  io:fwrite("List2 = ~p\n", [List2]),
  io:fwrite("List3 = ~p\n", [List3]),
  io:fwrite("List4 = ~p\n", [List4]).


% function with guard sequences
example3(A, B, C) when (A > 0) and (B > 0) and (C > 0) ->
  io:fwrite("<<Example3: Printing positive numbers>>\n"),
  io:fwrite("A = ~p\n", [A]),
  io:fwrite("B = ~p\n", [B]),
  io:fwrite("C = ~p\n", [C]).

% anonymous functions
example2() ->
  X = 10 ,
  Y = 3,
  Add = fun(X2, Y2) ->
    X2 + Y2 end ,
  Sub = fun(X2, Y2) ->
    X2 - Y2
        end,
  Mul = fun(X2, Y2) -> X2 * Y2 end ,
  Divide = fun(X2, Y2) -> X2 / Y2 end ,
  io:fwrite("<<Example2>>\n"),
  io:fwrite("X = ~p and Y = ~p\n", [X, Y]),
  io:fwrite("X + Y = ~p\n", [Add(X,Y)]),
  io:fwrite("X - Y = ~p\n", [Sub(X, Y)]),
  io:fwrite("X * Y = ~p\n", [Mul(X,Y)]),
  io:fwrite("X / Y = ~p\n", [Divide(X,Y)]).


example1() ->
  X = 10 ,
  Y = 3 ,
  Add_res = add(X, Y),
  Subtract_res = subtract(X, Y),
  Multiply_res = multiply(X, Y),
  Divide_res = divide(X, Y),
  IntDivide_res = intDivide(X, Y),
  Remainder_res = remainder(X, Y),
  io:fwrite("<<Example1>>\n"),
  io:fwrite("X = ~p and Y = ~p\n", [X, Y]),
  io:fwrite("X + Y = ~p\n", [Add_res]),
  io:fwrite("X - Y = ~p\n", [Subtract_res]),
  io:fwrite("X * Y = ~p\n", [Multiply_res]),
  io:fwrite("X / Y = ~p\n", [Divide_res]),
  io:fwrite("X div Y = ~p\n", [IntDivide_res]),
  io:fwrite("X rem Y = ~p\n", [Remainder_res]).


add(X, Y) ->
  X + Y.

subtract(X, Y) ->
  X - Y.

multiply(X, Y) ->
  X * Y .

divide(X, Y) ->
  X / Y.

intDivide(X, Y) ->
  X div Y.

remainder(X, Y) ->
  X rem Y .
