-module(p12).
-export([decode_modified/1]).


decode_modified([{N,X}|T]) ->
	p07:flatten([decode(N,X)|decode_modified(T)]);
decode_modified([H|T]) ->
	[H|decode_modified(T)];
decode_modified([]) ->
	[].



decode(1,X) ->
	X;
decode(N,X) ->
	[X|decode(N-1,X)].

