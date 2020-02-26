%% @author Steve Mwangi
%% @author Quoc Phung
%% @doc @todo Add description to lab06 & bst & cooperate.
-module(cooperate).
-compile(export_all).

go()->
    spawn(cooperate, producer,[spawn(cooperate, consumer, []),10]),
    % So that last item to print on screen is not printed 
    % between the spawned processes.
    timer:sleep(1000).

producer(Pid, N) when N =:= 1->
    RandInt = rand:uniform(10),
    io:format("Process ~w Producing ~w ~n", [self(), RandInt]),
    Pid!{word_sent, RandInt};

producer(Pid, N) ->
    RandInt = rand:uniform(10),
    io:format("Process ~w Producing ~w ~n", [self(), RandInt]),
    Pid!{word_sent, RandInt},
    producer(Pid, N-1).

consumer() ->
    timer:sleep(10),
    receive
        {_, Message} ->
            io:format("Process ~w Consuming ~w ~n", [self(), Message]),
            consumer()
        after 
            40 -> ok
    end.