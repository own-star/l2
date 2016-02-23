-module(p10).
-export([encode/1]).


encode([]) ->
	[];
encode(Orig) ->
	encode(Orig,1,[]).

encode([H|[H|T]],Acc,Res) ->
	encode([H|T],Acc+1,Res);
encode([H|T],Acc,Res) ->
	encode(T,1,[{Acc,H}|Res]);
encode([],_,Res) ->
	p05:reverse(Res).
