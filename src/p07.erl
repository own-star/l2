-module(p07).
-export([flatten/1]).

flatten([]) ->
	[];
flatten([[]|T]) ->
	flatten(T);
flatten([[H|T]|T1]) ->
	flatten([H|[T|T1]]);
flatten([H|T]) ->
	[H|flatten(T)].

