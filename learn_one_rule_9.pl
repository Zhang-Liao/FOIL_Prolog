learn_one_rule( _ , [ ] , Rule, _ , Rule).

learn_one_rule(PosExamples, NegExamples, PartialRule, LastUsed, Rule) :-
  % print(learn_one_rule(PartialRule)), nl,
  % print(posExamples(PosExamples)), nl,
  % print(negExamples(NegExamples)), nl,
  new_partial_rule(PosExamples, NegExamples,PartialRule, LastUsed, NewPartialRule, NewLastUsed),
  % print(nextPartialRule(NewPartialRule)), nl,
  filter(PosExamples, NewPartialRule, PosExamples1),
  filter(NegExamples, NewPartialRule, NegExamples1),
  % print(posExamples_(PosExamples)), nl,
  % print(negExamples_(NegExamples)), nl,
  % print(newPartialRule(NewPartialRule)), nl,
  % print(posExamples1(PosExamples1)), nl,
  % print(negExamples1(NegExamples1)), nl, nl,
  learn_one_rule(PosExamples1, NegExamples1, NewPartialRule,NewLastUsed, Rule ) .
