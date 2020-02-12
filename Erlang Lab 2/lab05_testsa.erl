-module(lab05_tests).


translate_1_test() ->
    ?assertEqual({-1.0, -2.0, 4.0}, lab05:translate({-1.0, 1.0, 0.0}, {0.0, -3.0, 4.0})).

translate_2_test() ->
    ?assertEqual({3.0, 1.0, -3.0}, lab05:translate({-1.0, 1.0, 0.0}, {4.0, 0.0, -3.0})).

isYounger_1_test() ->
    true = false == lab05:isYounger({10, 12, 2016}, {10, 12, 2016}).

isYounger_2_test() ->
    true = false == lab05:isYounger({10, 12, 2016}, {11, 12, 2016}).

isYounger_3_test() ->
    true = false == lab05:isYounger({10, 1, 2016}, {10, 2, 2016}).

isYounger_4_test() ->
    true = false == lab05:isYounger({10, 12, 2015}, {10, 12, 2016}).

isYounger_5_test() ->
    true = true == lab05:isYounger({11, 12, 2016}, {10, 12, 2016}).

isYounger_6_test() ->
    true = true == lab05:isYounger({10, 12, 2016}, {10, 12, 2015}).

isYounger_7_test() ->
    true = true == lab05:isYounger({10, 2, 2016}, {10, 1, 2016}).

isYounger_8_test() ->
    true = false == lab05:isYounger({11, 12, 2016}, {10, 12, 2017}).

isYounger_9_test() ->
    true = false == lab05:isYounger({10, 12, 2016}, {10, 11, 2017}).

incrementAll_1_test() ->
    [] = lab05:incrementAll([]).

incrementAll_2_test() ->
    [2, 3, 4] = lab05:incrementAll([1, 2, 3]).

incrementAll_3_test() ->
    [4, 6] = lab05:incrementAll([3, 5]).







