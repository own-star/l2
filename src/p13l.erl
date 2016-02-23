-module(p13l).
-export([decode/1]).

decode([[1,X]|T]) ->
	[X|decode(T)];
decode([[N,X]|T]) ->
	[X|decode([[N-1,X]|T])];
decode([]) ->
	[].
