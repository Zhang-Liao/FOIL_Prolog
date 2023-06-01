take_args(1, [X|_], [X]).
take_args(N,[X|Rest],[X|RestArgs] ) :- N > 1, NewIndex is N-1, take_args(NewIndex, Rest, RestArgs).

build_conseq(Pred, Conseq, NArgs) :-
    variables(Vars),
    predicate(Pred, NArgs),
    take_args(NArgs, Vars, ArgList),
    Conseq =.. [Pred | ArgList].

learn(Pred,  Rules):-
    elements(Elements),
    generate_pos_examples(Pred, PosExamples),
    % The third argument indicates the arity of negative examples.
    generate_neg_examples(PosExamples, Elements, 1, NegExamples),
    print(positive_example(PosExamples)), nl,
    print(negative_example(NegExamples)), nl,
    build_conseq(Pred, Conseq, NArgs),
 % Conseq =..
%[Pred , x, y],
    learn_rules(PosExamples, NegExamples, Conseq , NArgs , Rules ).
