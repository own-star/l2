-module(p06v1).
-export([is_palindrome/1]).

is_palindrome(L) ->
	L == p05:reverse(L).
