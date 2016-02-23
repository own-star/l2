-module(p11).
-export([encode_modified/1]).

encode_modified([]) ->
    [];
encode_modified(Orig) ->
	encode(Orig,1,[]).

encode([H|[H|T]],Acc,Res) ->
	encode([H|T],Acc+1,Res);
encode([H|T],1,Res) ->
%	{head,H,tail,T,res,Res};
	encode(T,1,[H|Res]);
encode([H|T],Acc,Res) ->
	encode(T,1,[{Acc,H}|Res]);
encode([],_,Res) ->
	p05:reverse(Res).
