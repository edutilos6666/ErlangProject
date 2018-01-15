%%%-------------------------------------------------------------------
%%% @author edutilos
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. Jan 2018 21:04
%%%-------------------------------------------------------------------
-module(loopExample).
-author("edutilos").

%% API
-export([main/0]).

main() ->
  while([1, 2, 3, 4, 5])
  .


while(L) -> while(L, 0).
while([], Acc) -> Acc ;
while([_|T], Acc) ->
  io:fwrite("Step = ~p\n", [Acc]),
  while(T, Acc+1).


