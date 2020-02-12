%% @author Steve Mwangi
%% @doc @todo Add description to lab04c.


-module(lab04c).

%% ====================================================================
%% API functions
%% ====================================================================
-export([fibonacci/1, mysum/1, myseries/3]).
-import(math, [pow/2]).


%% ====================================================================
%% Internal functions
%% ====================================================================
fibonacci(N) when N < 0 -> 
	'wrong_input'; 
fibonacci(0) -> 0;
fibonacci(1) -> 1;
fibonacci(N) -> fibonacci(N-1) + fibonacci(N-2).

mysum(Boundary) when Boundary =< 0 -> 0;
	mysum(1) -> 1;
	mysum(Boundary) -> Boundary + mysum(Boundary-1).

myseries1(First, Cratio, Position) ->
	First * math:pow(Cratio, Position-1).

myseries(First, Cratio, Position) when Position == 1 -> First;
	myseries(First, Cratio, Position) -> Cratio * myseries(First, Cratio, Position-1).
	
	
