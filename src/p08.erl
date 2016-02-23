-module(p08).
-export([compress/1]).

compress([]) ->
	[];
compress([H|T]) ->
	compress(T,H,[H]).

compress([],_,Res) ->
	p05:reverse(Res);
compress([H|T],H,Res) ->
	compress(T,H,Res);
compress([H|T],_,Res) ->
	compress(T,H,[H|Res]).
