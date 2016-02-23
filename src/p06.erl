-module(p06).
-export([is_palindrome/1]).

is_palindrome(Orig) ->
	is_palindrome(Orig,[],Orig).

is_palindrome([H|T],Rev,Orig) ->
	is_palindrome(T,[H|Rev],Orig);
is_palindrome([],Rev,Orig) ->
	Rev==Orig.
