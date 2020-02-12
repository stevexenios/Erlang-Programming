%% @author Steve Mwangi
%% @doc @todo Add description to lab05.
-module(lab05_tests).
-include_lib("eunit/include/eunit.hrl").

fractions_1_test() ->
    ?assertEqual({2, 10}, lab05:fractions({1, 2}, {2, 5}) ).

fractions_2_test() ->
    ?assertEqual({-15, -24}, lab05:fractions({-3, 4}, {5, -6})).

isOlder_1_test() ->
    false = lab05:isOlder({10, 12, 2016}, {10, 12, 2016}).

isOlder_2_test() ->
    true = lab05:isOlder({10, 12, 2016}, {11, 12, 2016}).

isOlder_3_test() ->
    true = lab05:isOlder({10, 1, 2016}, {10, 2, 2016}).

isOlder_4_test() ->
    true = lab05:isOlder({10, 12, 2015}, {10, 12, 2016}).

isOlder_5_test() ->
    false =  lab05:isOlder({11, 12, 2016}, {10, 12, 2016}).

isOlder_6_test() ->
    true = false == lab05:isOlder({10, 12, 2016}, {10, 12, 2015}).

isOlder_7_test() ->
    true = false == lab05:isOlder({10, 2, 2016}, {10, 1, 2016}).

isOlder_8_test() ->
    true = lab05:isOlder({12, 11, 2016}, {12, 10, 2017}).

isOlder_9_test() ->
    true = lab05:isOlder({12, 10, 2016}, {11, 10, 2017}).

flipAll_1_test() ->
    [] = lab05:flipAll([]).

flipAll_2_test() ->
    [-1, 4, 9] = lab05:flipAll([1, -4, -9]).

flipAll_3_test() ->
    [3, -5] = lab05:flipAll([-3, 5]).

myMin_1_test() ->
    ?assertEqual(0, lab05:myMin([1, 2,0,3,5])).

myMin_2_test() ->
    ?assertEqual(-1, lab05:myMin([-1]) ).

myMin_3_test() ->
    ?assertEqual('empty_list', lab05:myMin([]) ).

myMin_4_test() ->
    ?assertEqual(-4, lab05:myMin([-3, -4, 4, 6, -4])).

removeNonPerfects_1_test() ->
    [1, 4, 9, 25, 625] = lab05:removeNonPerfects([1,2,3,4,5,6,7,8,9,10,11,25,12,625]).

removeNonPerfects_2_test() ->
    [1,1,4] = lab05:removeNonPerfects([1,1,2,3,4,5]).

removeNonPerfects_3_test() ->
    [] = lab05:removeNonPerfects([2,5,8,10]).

removeNonPerfects_4_test() ->
    [25] = lab05:removeNonPerfects([25]).

removeNonPerfects_5_test() ->
    [] = lab05:removeNonPerfects([]).

calculateBill_1_test() ->
    [{tom, 11.0},{tim, 150.0},{tam, 625.0}] = lab05:calculateBill([{tom, 10, 0.1},{tim, 100, 0.5},{tam, 500, 0.25}]).

calculateBill_2_test() ->
    [{tom, 10},{tim, 30},{tam, 10}] = lab05:calculateBill([{tom, 10, 0},{tim, 10, 2},{tam, 5, 1}]).

generate_1_test()->
    [] = lab05:generate(3,1,1).

generate_2_test()->
    [1,2,3,4,5] = lab05:generate(1,5,1).

generate_3_test()->
    [3,5,7] = lab05:generate(3,8,2).

generate_4_test()->
    [30,40,50,60,70,80,90,100] = lab05:generate(30,100,10).

generate_5_test()->
    [3] = lab05:generate(3,3,1).

getnth_1_test()->
    true = {error, no_such_element} == lab05:getnth([],2).

getnth_2_test()->
    true = {error, no_such_element} == lab05:getnth(["hello", "there"],3).

getnth_3_test()->
    true = {error, no_such_element} == lab05:getnth(["hello", "there"],0).

getnth_4_test() ->
    true = "there" == lab05:getnth(["hello", "there"], 2).

getnth_5_test() ->
    true = "there" == lab05:getnth(["hello", "there", "where"], 2).

getnth_6_test() ->
    true = "where" == lab05:getnth(["hello", "there", "where"], 3).

getnth_7_test() ->
    true = "where" == lab05:getnth(["hello", "there", "where", "here"], 3).

repeat_1_test()->[2,2,2,2,3]=lab05:repeat([1,2,3], [0,4,1]).

repeat_2_test()->[]=lab05:repeat([], [0,4,1]).

repeat_3_test()->[]=lab05:repeat([1,2,3], []).

repeat_4_test()->[4,4]=lab05:repeat([4,5,6], [2]).
