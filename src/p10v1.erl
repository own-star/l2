-module(p10v1).
-export([encode/1]).


encode([{H,N}|[H|T]]) -> 
	encode([{H,N+1}|T]);
encode([{H,N}|T]) ->
	[{H,N}|encode(T)];
encode([H|T]) ->
	encode([{H,1}|T]);
encode([]) -> [].

%%
