known_fact(intro(1)).
known_fact(goal_nat(1, [0])).
known_fact(goal_plus(1, [0, 1])).
known_fact(hyps_plus(1, a, [a, 0])).
known_fact(hyps_plus(1, a, [a, 0, 1])).
known_fact(goal_nat(2, [0])).
known_fact(goal_plus(2, [0, 1])).
known_fact(hyps_plus(2, a, [a, 0])).
known_fact(hyps_plus(2, a, [a, 1])).
known_fact(vertical(X, Y) :- (X\==Y), prefix(X, Y)).
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

