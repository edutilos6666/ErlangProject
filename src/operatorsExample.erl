%%%-------------------------------------------------------------------
%%% @author edutilos
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. Jan 2018 20:34
%%%-------------------------------------------------------------------
-module(operatorsExample).
-author("edutilos").

%% API
-export([main/0]).


main() ->
  test_ArithmeticOps(),
  test_RelationalOps(),
  test_MathOps(),
  test_LogicalOps(),
  test_BitwiseOps()
  .


test_ArithmeticOps() ->
  X = 10,
  Y = 3,
  Add = X + Y ,
  Sub = X - Y ,
  Mul = X * Y ,
  Divide = X / Y,
  IntDivide = X div Y ,
  Remainder = X rem Y ,
  io:fwrite("<<Arithmetic Operators>>\n"),
  io:fwrite("X = ~p and Y = ~p\n", [X, Y]),
  io:fwrite("X + Y = ~p\n", [Add]),
  io:fwrite("X - Y = ~p\n", [Sub]),
  io:fwrite("X * Y = ~p\n", [Mul]),
  io:fwrite("X / Y = ~p\n", [Divide]),
  io:fwrite("X div Y = ~p\n", [IntDivide]),
  io:fwrite("X rem Y = ~p\n", [Remainder]).


test_RelationalOps() ->
  X = 10 ,
  Y = 3,
  Eq = X == Y ,
  Ne = X /= Y ,
  Identical = X =:= Y ,
  NotIdentical = X =/= Y ,
  Gt = X > Y ,
  Gte = X >= Y,
  Lt = X < Y ,
  Lte = X =< Y,
  io:fwrite("<<Relational Operators>>\n"),
  io:fwrite("X = ~p and Y = ~p\n", [X, Y]),
  io:fwrite("X == Y = ~p\n", [Eq]),
  io:fwrite("X /= Y = ~p\n", [Ne]),
  io:fwrite("X =:= Y = ~p\n", [Identical]),
  io:fwrite("X =/= Y = ~p\n", [NotIdentical]),
  io:fwrite("X > Y = ~p\n", [Gt]),
  io:fwrite("X >= Y = ~p\n", [Gte]),
  io:fwrite("X < Y = ~p\n", [Lt]),
  io:fwrite("X =< Y = ~p\n", [Lte]).



test_MathOps() ->
  Exp = math:exp(1),
  Log = math:log(math:exp(1)),
  Log10 = math:log10(1000),
  Log2 = math:log2(64),
  Pow = math:pow(10, 3),
  Sqrt = math:sqrt(10000),
  % There is also sin, cos, tan, asin, acos, atan,
  % sinh, cosh, tanh, asinh, acosh, atanh
  Sin = math:sin(90),
  Cos = math:cos(90),
  Tan = math:tan(45),
  Asin = math:asin(1),
  Acos = math:acos(1),
  Atan = math:atan(1),
  Sinh = math:sinh(90),
  Cosh = math:cosh(90),
  Tanh = math:tanh(45),
  Asinh = math:asinh(1),
  Acosh = math:acosh(1),
  Atanh = math:atanh(0.5),
  io:fwrite("<<Math Operators>>\n"),
  io:fwrite("exp(1) = ~p\n",[Exp]),
  io:fwrite("log(e) = ~p\n", [Log]),
  io:fwrite("log10(1000) = ~p\n", [Log10]),
  io:fwrite("log2(64) = ~p\n", [Log2]),
  io:fwrite("pow(10,3) = ~p\n", [Pow]),
  io:fwrite("sqrt(10000) = ~p\n", [Sqrt]),
  io:fwrite("sin(90) = ~p\n", [Sin]),
  io:fwrite("cos(90) = ~p\n", [Cos]),
  io:fwrite("tan(45) = ~p\n", [Tan]),
  io:fwrite("asin(1) = ~p\n", [Asin]),
  io:fwrite("acos(1) = ~p\n", [Acos]),
  io:fwrite("atan(1) = ~p\n", [Atan]),
  io:fwrite("sinh(90) = ~p\n", [Sinh]),
  io:fwrite("cosh(90) = ~p\n", [Cosh]),
  io:fwrite("tanh(90) = ~p\n", [Tanh]),
  io:fwrite("asinh(1) = ~p\n", [Asinh]),
  io:fwrite("acosh(1) = ~p\n", [Acosh]),
  io:fwrite("atanh(1) = ~p\n", [Atanh]).




test_LogicalOps()->
  X = true ,
  Y = false,
  And = X and Y ,
  Or = X or Y ,
  Xor = X xor Y ,
  Not_X = not X ,
  Not_Y = not Y ,
  io:fwrite("<<Logical Operators>>\n"),
  io:fwrite("X = ~p and Y = ~p\n", [X,Y]),
  io:fwrite("X and Y = ~p\n", [And]),
  io:fwrite("X or Y = ~p\n", [Or]),
  io:fwrite("X xor Y = ~p\n", [Xor]),
  io:fwrite("not X = ~p\n", [Not_X]),
  io:fwrite("not Y = ~p\n", [Not_Y]).


test_BitwiseOps() ->
  X = 10 ,
  Y = 23 ,
  Band = X band Y ,
  Bor = X bor Y ,
  Bxor = X bxor Y ,
  Bnot_X = bnot X ,
  Bnot_Y = bnot Y,
  Bsl_X_2 = X bsl 2 ,
  Bsr_X_2 = X bsr 2 ,
  io:fwrite("<<Bitwise Operators>>\n"),
  io:fwrite("X = ~p and Y = ~p\n", [X, Y]),
  io:fwrite("X band Y = ~p\n", [Band]),
  io:fwrite("X bor Y = ~p\n" , [Bor]),
  io:fwrite("X bxor Y = ~p\n", [Bxor]),
  io:fwrite("bnot X = ~p\n", [Bnot_X]),
  io:fwrite("bnot Y = ~p\n", [Bnot_Y]),
  io:fwrite("X bsl 2 = ~p\n", [Bsl_X_2]),
  io:fwrite("X bsr 2 = ~p\n", [Bsr_X_2]).



