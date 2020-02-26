%% @author Steve Mwangi
%% @author Quoc Phung
%% @doc @todo Add description to lab06 & bst.
-module(bst).

-compile(export_all).

-type bst() :: empty
    | { integer(), bst(), bst()}.


insert(N, Tree) ->
    case Tree of
	empty -> {N, empty, empty};
	{Value, Left, Right} ->
	   if 
	      N < Value -> {Value, insert(N, Left), Right};
	      N > Value -> {Value, Left, insert(N, Right)}
	   end
    end.

% Bree = {3, empty, empty}.
% bast:isFull(bst:insert(1,bst:insert(2,Bree)))

% Included definition of full binary tree = {empty, empty, empty}
% https://www.geeksforgeeks.org/check-whether-binary-tree-full-binary-tree-not/ 
isFull(Tree) ->
	case Tree of
		empty -> true;
		{_Value, empty, empty} -> true;
		{_Value, _Left, empty} -> false;
		{_Value, empty, _Right} -> false;
		{_Value, Left, Right} -> isFull(Left) andalso isFull(Right) andalso true
	end.

fullCount(Tree)->
	InnerFunction = fun F(T)->
		case T of
			empty -> 0;
			{empty, empty, empty} -> 0;
			{_Value, Left, Right}->1+F(Left) + F(Right)
		end
	end,
	Var = bst:isFull(Tree),
	case Var of
		false -> {Var, undefined};
		true -> {Var, InnerFunction(Tree)}
	end.
