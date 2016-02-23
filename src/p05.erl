-module(p05).
-export([reverse/1]).

reverse(Orig) ->
	reverse(Orig,[]).

reverse([H|T],Rev) ->
	reverse(T,[H|Rev]);
reverse([],Rev) ->
	Rev.
