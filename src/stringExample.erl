%%%-------------------------------------------------------------------
%%% @author edutilos
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. Jan 2018 21:28
%%%-------------------------------------------------------------------
-module(stringExample).
-author("edutilos").

%% API
-export([main/0]).


main()->
  example1()
  .

example1() ->
  Str1 = "foo",
  Str2 = "bar",
  io:fwrite("Str1 = ~p and Str2 = ~p\n", [Str1, Str2]),
  Str3= io_lib:format("Str1 = ~s and Str2 = ~s\n", [Str1, Str2]),
  io:fwrite(Str3),
  io:fwrite("len(Str1) = ~p , len(Str2) = ~p , len(Str3) = ~p\n", [string:len(Str1),
    string:len(Str2), string:len(Str3)]),
  Str4 = string:concat(Str1, Str2),
  io:fwrite("Str4 = ~p\n", [Str4]),
  CharIndex = string:chr(Str1, $o),
  io:fwrite("CharIndex = ~p\n", [CharIndex]),
  StrIndex = string:str(Str4, Str2),
  io:fwrite("StrIndex = ~p\n", [StrIndex]),
  LowerStr1 = string:to_lower(Str1),
  UpperStr1 = string:to_upper(Str1),
  io:fwrite("LowerStr1 = ~p\n", [LowerStr1]),
  io:fwrite("UpperStr1 = ~p\n", [UpperStr1])
  .
