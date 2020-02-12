%% Tseonawit Kidebe and Steve Mwangi and Michael Abay
-module(lab04).
-compile(export_all).
-import(math, [pi/0,sqrt/1, log/1]).
-import(io, [fwrite/2, format/2]).

pendulum(Arg1, Arg2)-> math:pi()*2*(math:sqrt(Arg1/Arg2)).
    
isDifferent(Ar1, Ar2) -> 
    if
        Ar1 =:= Ar2 -> false;
        true -> true
    end.

largerLog(X, Y) -> 
    A = math:log(X),
    B = math:log(Y),
    if 
        A > B -> A;
        true -> B        
    end.

display(D1, D2) ->
    if
        (D1 rem 2 =:= 0) and (D2 rem 2 =:= 0) ->
            io:format("both even ~n");
        ((D1 rem 2) =/= 0) and ((D2 rem 2) =/= 0) ->
            io:format("both odd ~n");
        true -> io:format("different ~n")
    end. 

primaryColor(Int1) ->
    case Int1 of
        1-> red;
        2-> green;
        3-> blue;
        _-> no_match
    end.

primaryColor2(Int2) when Int2 =:= 1 -> red;
primaryColor2(Int2) when Int2 =:= 2 -> green;
primaryColor2(Int2) when Int2 =:= 3 -> blue;
primaryColor2(_) -> no_match.

fibonacci(Fib) when Fib < 0 -> wrong_input;
fibonacci(Fib) when Fib =:= 0 -> 0;
fibonacci(Fib) when Fib =:= 1 -> 1;
fibonacci(Fib) -> fibonacci(Fib-2) + fibonacci(Fib-1).
 
mysum(Bound) -> 
    if 
        Bound =:= 0 -> Bound;
        Bound >= 1 -> Bound + mysum(Bound-1);
        true -> wrong_input
    end. 

myseries(A,B,C)->
    if
        (C=:=1) -> A;
        true -> myseries(A*B, B, C-1)
    end.
