-module(p11v1).
-export([encode_modified/1]).


encode_modified([{H,N}|[H|T]]) -> 
	encode_modified([{H,N+1}|T]);
encode_modified([{H,N}|T]) ->
	[{H,N}|encode_modified(T)];
encode_modified([H|[H|T]]) ->
	encode_modified([{H,1}|T]);
encode_modified([H|T]) ->
	[H|encode_modified(T)];
encode_modified([]) -> [].

%%
