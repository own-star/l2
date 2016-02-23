-module(p12v1).
-export([decode_modified/1]).

decode_modified([{1,X}|T]) ->
	[X|decode_modified(T)];
decode_modified([{N,X}|T]) ->
	[X|decode_modified([{N-1,X}|T])];
decode_modified([H|T]) ->
	[H|decode_modified(T)];
decode_modified([]) ->
	[].


