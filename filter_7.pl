% filter(Examples, Rule, Examples1) :-
%     print('_________filter________'), nl,
%     print(examples_before_find(Examples)), nl,
%     findall(Example,
%         (member1(Example, Examples), print(member_example(Example)), nl,
%         covers(Rule, Example), print(cover_example(Example)), nl),
%         Examples1),
    % length1(Examples, L),
    % length1(Examples1, L1),
    % (  L1 > L
    % Rule == rule(intro(v_1),[hyps_plus(v_1,v_2,v_3)]) ->
    % print(rule(Rule)), nl,
    % print(examples(Examples)), nl,
    % print(examples1(Examples1)), nl, nl,
    % halt(0)).

filter(Examples, Rule, NoDupExg) :-
    findall(Example, (member1(Example, Examples), covers(Rule, Example)), Examples1),
    sort(Examples1, NoDupExg).
