%% @author Steve Mwangi
%% @doc @todo Add description to lab05.
-module(lab05).
-include_lib("eunit/include/eunit.hrl").
%% ====================================================================
%% API functions
%% ====================================================================
-export([translate/2, isYounger/2, incrementAll/1, mymax/1, helperMax/2]).
%% ====================================================================
%% Internal functions
%% ====================================================================
translate({X,Y,Z}, {A,B,C})->{X+A, Y+B, Z+C}.

isYounger({D, M, Y}, {Dd, Mm, Yy})->
	{Y, M, D}>{Yy, Mm, Dd}.

incrementAll([])-> [];
incrementAll([X])-> [X+1];
incrementAll([X|Xs])->[X+1|incrementAll(Xs)].



mymax([])->'empty_list';
mymax([X])-> X;
mymax([X|Xs]) -> helperMax(Xs, X).

helperMax([], X) -> X;
helperMax([X|Xs], Mmax) ->
	if
		X>=Mmax -> helperMax(Xs, X);
		X<Mmax -> helperMax(Xs, Mmax)
	end.
		




