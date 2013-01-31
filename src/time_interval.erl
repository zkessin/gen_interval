-module(time_interval).
-export([get_interval/1]).
 
-define(SECOND, 1000).
-define(MINUTE, 60  * ?SECOND).
-define(HOUR,   60  * ?MINUTE).
-define(DAY,    24  * ?HOUR).
 
get_interval(Time) when is_integer(Time) ->
    Time;
get_interval({Time, ms}) ->
    Time;
get_interval({Time, second}) ->
    Time * ?SECOND;
get_interval({Time, minute}) ->
    Time * ?MINUTE;
get_interval({Time, hour}) ->
    Time * ?HOUR;
get_interval({Time, day}) ->
    Time * ?DAY.
