%% @author Steve Mwangi
%% @doc @todo Add description to lab05.
-module(lab05).
%% ====================================================================
%% API functions
%% ====================================================================
-compile(export_all).
%% ====================================================================
%% Internal functions
%% ====================================================================
fractions({X,Y}, {A,B})->{X*A, Y*B}.

isOlder({D, M, Y}, {Dd, Mm, Yy})->
	{Y, M, D}<{Yy, Mm, Dd}.

flipAll([])->[];
flipAll([X|Xs])->[-1*X|flipAll(Xs)].

myMin([])->'empty_list';
myMin([El])->El;
myMin([X|Xs])-> helperMin(Xs, X).

helperMin([], X) -> X;
helperMin([X|Xs], Minn)->
	if
		X =< Minn -> helperMin(Xs, X);
		X > Minn -> helperMin(Xs, Minn)
	end.

removeNonPerfects([]) -> [];
removeNonPerfects([X|Xs])->
	Temp = isPerfectSquare(X),
	case Temp of  
		true -> [X|removeNonPerfects(Xs)];
		false -> removeNonPerfects(Xs)
	end.

isPerfectSquare(X)->
	Sqrt = math:sqrt(X),
	(Sqrt - math:floor(Sqrt)) == 0.

calculateBill([])->[];
calculateBill([X|Xs])->[helperCalc(X)|calculateBill(Xs)].

helperCalc({A,B,C})-> {A, B+B*C}.

generate(Arg1, Arg2, Arg3)->
    if 
        Arg1 > Arg2 -> [];
        Arg1 + Arg3 > Arg2 -> [Arg1];
        true -> [Arg1|generate(Arg1+Arg3, Arg2,Arg3)]
    end.

getnth(Lis, N)->
    if
        Lis == [] -> {error, no_such_element};
		N < 1 -> {error, no_such_element};
        true -> helperGet(Lis, N, 1)
    end.

helperGet(L1, N, Acc)->
    if
		L1 == [] -> {error, no_such_element};
        N == Acc -> hd(L1);
        true -> helperGet(tl(L1), N, Acc+1)
    end.

repeat(L_Int, L_Other) ->
	if
		L_Other == [] -> [];
		L_Int == []-> [];
		true -> helperRepeater(hd(L_Int), hd(L_Other))++repeat(tl(L_Int), tl(L_Other))
	end.

helperRepeater(Hd1, Hd2)->
	if
		Hd2 == 0 -> [];
		Hd2 == 1 -> [Hd1];
		true -> [Hd1|helperRepeater(Hd1, Hd2-1)]
	end.
