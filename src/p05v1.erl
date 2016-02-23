-module(p05v1).
-export([reverse/1]).

%reverse([[]|T]) ->
%	T;
reverse([]) ->
	[];
%reverse([H,T]) ->
%	{head,H,tail,T};
reverse([H|T]) ->
	reverse(T)++[H].
