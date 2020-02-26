%% @author Steve Mwangi
%% @author Quoc Phung
%% @doc @todo Add description to lab06.
-module(lab06).
%% ====================================================================
%% API functions
%% ====================================================================
-compile(export_all).

%% ====================================================================
%% Internal functions
%% ====================================================================
removeNonPerfects([])->[];
removeNonPerfects([H|T])->
    case isPerfectSquare(H) of
        true -> [H|removeNonPerfects(T)];
        false-> removeNonPerfects(T)
    end.

isPerfectSquare(X) ->
    if
        X < 0 -> false;
        true -> Sqrt = math:sqrt(X),
        (Sqrt - trunc(Sqrt)) == 0
    end.
% A = lab06:flippedDiff(a)
% A(8,3)
% B = lab06:flipperDiff(b)
% B(8,3)
flippedDiff(Arg1)->
    case Arg1 of
        a-> fun(First,Second)->First-Second end;
        b-> fun(First, Second)-> Second-First end
    end.


% lab06:mapFilter(fun(X)->X*3 end, fun(X)->X rem 2=:=0 end,[1,2,3,4,5,6]).
% lab06:mapFilter(fun lab06:triple/1, fun(X)-> X rem 2 =/=1 end, [1,2,3,4,5,6,7,8,9,10]).
mapFilter(_,_,[])->[];
mapFilter(Mapfun, Filterfun, List) -> 
    lists:filter(Filterfun, lists:map(Mapfun,List)).

triple(N)->3*N.

foldResult(FolderFun, Acc, List)-> 
    H1 = lists:foldr(FolderFun, Acc, List),
    H2 = lists:foldl(FolderFun, Acc, List), 
    {H1,H2, H1==H2}.
