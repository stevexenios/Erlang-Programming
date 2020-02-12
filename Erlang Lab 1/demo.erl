%% @author steve
%% @doc @todo Add description to demo.
-module(demo).
%% ====================================================================
%% API functions
%% ====================================================================
-export([double/1, message/1, selecting1/1, selecting2/1, factorial/1]).
%% ====================================================================
%% Internal functions
%% ====================================================================
-import(io, [fwrite/2]).
double(N) ->
	times(N, 2).
times(Value, Times) ->
	Value * Times.
message(N) ->
	% this is a function with side effects
	A = 5.34,
	io:fwrite("here it comes~nhello ~w~n~f~n", [N, A]).
selecting1(Day) ->
	case Day of
		monday -> 1;
		tuesday -> 2;
		wednesday -> 3;
		thursday -> 4;
		friday -> 5;
		saturday -> 6;
		sunday -> 7;
		_Other -> {error, 'unknown day'}
	end.
selecting2(Value) ->
	if
		Value < 0 -> negative;
		Value > 0 -> positive;
		true -> zero
	end.
factorial(0) ->
	1;
factorial(N) -> N * factorial(N-1).


