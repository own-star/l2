-module(p09v1).
-export([pack/1]).

pack([[H|_]=H1|[H|T]]) ->
	pack([[H|H1]|T]);
pack([[_|_]=H|T]) -> 
	[H|pack(T)];
pack([H|T]) ->
	pack([[H]|T]);
pack([]) ->
	[].

