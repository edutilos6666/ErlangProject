%%%-------------------------------------------------------------------
%%% @author edutilos
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. Jan 2018 22:10
%%%-------------------------------------------------------------------
-module(ioExample).
-author("edutilos").

%% API
-export([main/0]).

main() ->
  example1()
  .

example1() ->
  FileName = "temp.dat",
  {ok, Fh} = file:open(FileName, [write]),
  file:write(Fh, "foo\n"),
  file:write(Fh, "bar\n"),
  file:write(Fh, "bim\n"),
  file:close(Fh),
  {ok, Fh2} = file:open(FileName, [append]),
  file:write(Fh2, "edu\n"),
  file:write(Fh2, "tilos\n"),
  file:close(Fh2),
  {ok, Fh3} = file:open(FileName, [read]),
  Words = file:read(Fh3, 1024*1024),
  io:fwrite("Words = ~p\n", [Words]),
  file:close(Fh3).
