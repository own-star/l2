-module(p15).
-export([replicate/2]).

replicate(Orig,N) -> 
	replicate(Orig,N,N).


replicate(_,0,_) ->
	[];
replicate([H|T],1,N) ->
	[H|replicate(T,N,N)];
replicate([H|T],Acc,N) ->
	[H|replicate([H|T],Acc-1,N)];
replicate([],_,_) ->
	[].
