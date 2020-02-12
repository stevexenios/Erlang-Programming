%% @author Steve Mwangi
%% @doc @todo Add description to lab04b.


-module(lab04b).

%% ====================================================================
%% API functions
%% ====================================================================
-export([displaySigns/2, rating/1]).
-import(io, [fwrite/2]).

%% ====================================================================
%% Internal functions
%% ====================================================================
displaySigns(Value1, Value2) ->
	if
		(Value1 > 0) andalso (Value2 > 0) -> io: fwrite("~w and ~w positive ~n", [Value1, Value2]);
		(Value1 =< 0) andalso (Value2 =< 0) -> io: fwrite("~w and ~w nonpositive ~n", [Value1, Value2]);
		true -> io: fwrite("~w and ~w different~n", [Value1, Value2])
	end.

rating(Rating) ->
	case Rating of
		4 -> 'excellent';
		3 -> 'good';
		2 -> 'fair';
		1 -> 'poor';
		0 -> 'unacceptable';
		_Other -> 'no_such_rating'
	end.
