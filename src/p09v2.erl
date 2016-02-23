-module(p09v2).
-export([pack/1]).

pack([[H|_]=H1|[H|T]]) ->
	pack([[H|H1]|T]);
pack([[H|[H|_]]=H1|T]) -> 
	[H1|pack(T)];
pack([[H]|T]) -> 
	[[H]|pack(T)];
pack([H|T]) ->
	pack([[H]|T]);
pack([]) ->
	[].

