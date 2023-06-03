known_fact(intro(1)).
known_fact(goal_nat(1, [0])).
known_fact(goal_plus(1, [0, 1])).
known_fact(hyps_plus(1, a, [a, 0])).
known_fact(hyps_plus(1, a, [a, 0, 1])).
known_fact(goal_nat(2, [0])).
known_fact(goal_plus(2, [0, 1])).
known_fact(hyps_plus(2, a, [a, 0])).
known_fact(hyps_plus(2, a, [a, 1])).
known_fact(vertical(X, Y) :- (nonvar(X), nonvar(Y), dif(X, Y), prefix(X, Y))).
predicate(intro, 1).
predicate(goal_nat, 2).
predicate(goal_plus, 2).
predicate(hyps_plus, 3).
predicate(vertical, 2).

variables([v_1, v_2, v_3, v_4, v_5, v_6, v_7]).
% Elements for generating positive and negative examples
elements([1, 2]).

length1([ ], 0).
length1([X|Rest], N) :-
	length(Rest, NRest) ,
	N is NRest + 1 .

test_cover :- covers(rule(intro(v_1), [hyps_plus(v_4,v_2,v_6),hyps_plus(v_4,v_2,v_5),hyps_plus(v_1,v_2,v_3), vertical(v_6,v_5)]), pos(1)).

above(X, Y) :- nonvar(X), nonvar(Y), dif(X, Y), prefix(X, Y).
below(X, Y) :- nonvar(X), nonvar(Y), dif(X, Y), prefix(Y, X).

vertical(X, Y) :- nonvar(X), nonvar(Y), dif(X, Y), prefix(X, Y).
vertical(X, Y) :- nonvar(X), nonvar(Y), dif(X, Y), prefix(Y, X).

horizon([X], [Y]) :- nonvar(X), nonvar(Y), dif(X, Y).
horizon([H|X], [H|Y]) :- nonvar(X), nonvar(Y), dif(X, Y), horizon(X, Y).

% intro(1).
goal_nat(1, [0]).
goal_plus(1, [0, 1]).
hyps_plus(1, a, [a, 0]).
hyps_plus(1, a, [a, 0, 1]).
goal_nat(2, [0]).
goal_plus(2, [0, 1]).
hyps_plus(2, a, [a, 0]).
hyps_plus(2, a, [a, 1]).

% difference ?
intro1(V1) :- hyps_plus(V1, V2, V3), hyps_plus(V1, V2, V4), vertical(V3, V4).
intro2(V1) :- hyps_plus(V1, V2, V3), hyps_plus(V1, V2, V4), above(V3, V4).
intro3(V1) :- hyps_plus(V1, V2, V3), hyps_plus(V1, V2, V4), below(V3, V4).

