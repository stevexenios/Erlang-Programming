-module(selectiveConsumer).
-compile(export_all).


go() ->
    Pid = spawn(selectiveConsumer,consumer,[]),
    register(child,Pid),
    spawn(selectiveConsumer,producer,[whereis(child),10]),
    io:format(""),
    unregister(child).

producer(Pid,0) ->
    Value = rand:uniform(10),
    io:format("producing ~w ~w~n",[Value,self()]),
    Pid ! {secret_word,Value};

producer(Pid,N) when N > 0 ->
    Value = rand:uniform(10),
  io:format("producing ~w ~w~n",[Value,self()]),
  Pid ! {secret_word,Value},
  producer(Pid, N-1).

consumer() ->
    receive
        {secret_word,Msg} ->
            io:format("consuming ~w ~w~n", [Msg,self()]),
            timer:sleep(10),
            consumer()
        after
            40 ->
                ok
    end.


