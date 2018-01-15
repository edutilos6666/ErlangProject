%%%-------------------------------------------------------------------
%%% @author edutilos
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. Jan 2018 21:38
%%%-------------------------------------------------------------------
-module(containerDataTypesExample).
-author("edutilos").

%% API
-export([main/0]).


main() ->
  test_tuple(),
  test_list(),
  test_map(),
  test_record()
  .


% record example
-record(worker, {id = 0, name = "", age = 0, wage = 0.0, active = false}).
test_record() ->
  io:fwrite("<<test_record>>\n"),
  Worker1 = #worker{id = 1, name = "foo", age = 10 , wage = 100.0 , active = true},
  Worker2 = Worker1#worker{name = "bar", age = 20},
  io:fwrite("Worker1 = ~p\n", [Worker1]),
  io:fwrite("Worker2 = ~p\n", [Worker2]),
  io:fwrite("<<Worker1 details>>\n"),
  io:fwrite("id = ~p\n", [Worker1#worker.id]),
  io:fwrite("name = ~p\n", [Worker1#worker.name]),
  io:fwrite("age = ~p\n", [Worker1#worker.age]),
  io:fwrite("wage = ~p\n", [Worker1#worker.wage]),
  io:fwrite("active = ~p\n", [Worker1#worker.active]),
  io:fwrite("<<Worker2 details>>\n"),
  io:fwrite("id = ~p\n", [Worker2#worker.id]),
  io:fwrite("name = ~p\n", [Worker2#worker.name]),
  io:fwrite("age = ~p\n", [Worker2#worker.age]),
  io:fwrite("wage = ~p\n", [Worker2#worker.wage]),
  io:fwrite("active = ~p\n", [Worker2#worker.active])
  .

% map example
test_map() ->
  io:fwrite("<<test_map>>\n"),
  People = #{"foo" => 10 , "bar" => 20, "bim" => 30 },
  io:fwrite("People = ~p\n", [People]),
  io:fwrite("foo = ~p\n" , [maps:get("foo", People)]),
  io:fwrite("bar = ~p\n", [maps:get("bar", People)]),
  io:fwrite("bim = ~p\n", [maps:get("bim", People)]),
  io:fwrite("keys = ~p\n", [maps:keys(People)]),
  io:fwrite("values = ~p\n", [maps:values(People)]),
  maps:put("pako", 40, People),
  io:fwrite("People = ~p\n", [People]),
  io:fwrite("get foo = ~p\n", [maps:find("foo", People)]),
  io:fwrite("People in remove foo = ~p\n", [maps:remove("foo", People)]).


% list example
test_list() ->
  List1 = [1, 2, 3],
  List2 = [4, 5, 6],
  List3 = List1 ++ List2,
  List4 = List3 -- List1,
  Head_List4 = hd(List4),
  Tail_List4 = tl(List4),
  List5 = [10|List4],
  [Head|Tail] = List4,
  io:fwrite("<<test_list>>"),
  io:fwrite("List1 = ~p\n", [List1]),
  io:fwrite("List2 = ~p\n", [List2]),
  io:fwrite("List3 = List1 ++ List2 = ~p\n", [List3]),
  io:fwrite("List4 = List3 -- List1 = ~p\n", [List4]),
  io:fwrite("Head_List4 = ~p\n", [Head_List4]),
  io:fwrite("Tail_List4 = ~p\n", [Tail_List4]),
  io:fwrite("List5 = ~p\n", [List5]),
  io:fwrite("Head = ~p , Tail = ~p\n", [Head, Tail]),
  % list comprehension
  List6 = [2*N || N <- List1],
  List7 = [N*N*N || N <- List1],
  List8 = [N*N || N <- List1, N rem 2 == 0],
  io:fwrite("List6 = ~p\n", [List6]),
  io:fwrite("List7 = ~p\n", [List7]),
  io:fwrite("List8 = ~p\n", [List8]),
  Name_Age = [{"foo", 10 }, {"bar", 20}, {"bim", 30}, {"pako", 40}],
  Older_People = [{Name, Age} || {Name, Age} <- Name_Age, Age > 20],
  io:fwrite("Name_Age = ~p\n", [Name_Age]),
  io:fwrite("Older_People = ~p\n", [Older_People])
  .


% tuple example
test_tuple() ->
  io:fwrite("<<test_tuple>>"),
  Person = {1, "foo", 10 , 100.0, true},
  io:fwrite("Person= ~p\n", [Person]),
  {Id, Name, Age, Wage, Active} = Person,
  io:fwrite("Id = ~p\n", [Id]),
  io:fwrite("Name = ~p\n", [Name]),
  io:fwrite("Age = ~p\n", [Age]),
  io:fwrite("Wage = ~p\n", [Wage]),
  io:fwrite("Active = ~p\n" , [Active]),
  {_, Name, Age, _, _} = Person ,
  io:fwrite("Name2 = ~p\n", [Name]),
  io:fwrite("Age2 = ~p\n", [Age]),
  Person2 = {id, 2, name, "bar", age, 20, wage, 200.0, active, "false"},
  io:fwrite("<<Person2>>\n"),
  {id, Id2, name, Name2, age, Age2, wage, Wage2, active, Active2} = Person2 ,
  io:fwrite("Id = ~p\n", [Id2]),
  io:fwrite("Name = ~p\n", [Name2]),
  io:fwrite("Age = ~p\n", [Age2]),
  io:fwrite("Wage = ~p\n", [Wage2]),
  io:fwrite("Active = ~p\n", [Active2]).
