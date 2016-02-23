-module(p09).
-export([pack/1]).

pack([]) ->
	[];
pack([H|T]) ->
	pack(T,[H],[]).

%pack([H|T],[H|_],[])->
%	{he,H,ta,T};
pack([H|T],[H|L],Res) ->
	pack(T,[H,H|L],Res);
pack([H|T],Acc,Res) ->
	pack(T,[H],[Acc|Res]);
pack([],Acc,Res) ->
	p05:reverse([Acc|Res]).
