-module(ringme).
-compile(export_all).

start(_,N) when N =< 0 -> ok;
start(Msg,N) when N > 0 ->
    starter(Msg,N,[spawn(ringme,person,[])]).


starter(Msg,0, [H|T]) ->
    H ! {Msg,[H|T]},
    io:format("");

starter(Msg,N,MyList) ->
    starter(Msg,N-1,[spawn(ringme,person,[])] ++ MyList).


person() ->
    receive
        {Message,[Pid1,Pid2 | T]} ->
            io:format("pid:~precived message:~p and sending it to:~p~n",[Pid1,Message,Pid2]),
            Pid2 ! {Message,[Pid2 | T]};
        {Message,[Pid1]} ->
            io:format("pid:~precived message:~p and is DONE~n", [Pid1,Message])

    end.
    

