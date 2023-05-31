known_fact(goal_nat(1,[2])).
known_fact(goal_plus(1,[2, 1])).
known_fact(hyps_nat(1, a, pos([a, 2]))).
known_fact(hyps_plus(1, a, pos([a, 1]))).
known_fact(intro(1)).

known_fact(goal_nat(2,[2])).
known_fact(goal_plus(2,[2, 1])).
known_fact(hyps_plus(2, a, pos([a, 1]))).

predicate(intro, 1).
predicate(goal_nat, 2).
predicate(goal_plus, 2).
predicate(hyps_nat, 3).
predicate(hyps_plus, 3).

variables([v_1, v_2, v_3, v_4, v_5, v_6, v_7, v_8, v_9, v_10]).
elements([1, 2, a, pos]).

length1([ ], 0).
length1([X|Rest], N) :-
	length(Rest, NRest) ,
	N is NRest + 1 .

