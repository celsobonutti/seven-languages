count(0, []).
count(Count, [_ | Tail]) :-
    count(TailCount, Tail),
    Count is TailCount + 1.

sum(0, []).
sum(Sum, [Head | Tail]) :-
    sum(TailSum, Tail),
    Sum is TailSum + Head.

average(Average, List) :-
    sum(Sum, List),
    count(Count, List),
    Average is Sum/Count.

append(List2, [], List2).
append([Head | Next], [Head | Tail], List2) :-
    append(Next, Tail, List2).

snoc([X], X, []).
snoc([Head | Result], X, [Head | Tail]) :-
    snoc(Result, X, Tail).

reverse([], []).
reverse(Result, [Head | Tail]) :-
    reverse(ReversedTail, Tail),
    snoc(Result, Head, ReversedTail).

smallest(X, [X]).
smallest(Smallest, [Head | Tail]) :-
    smallest(TailSmallest, Tail),
    Head > TailSmallest,
    Smallest is TailSmallest.
smallest(Smallest, [Head | Tail]) :-
    smallest(TailSmallest, Tail),
    Head < TailSmallest,
    Smallest is Head.

insert([X], X, []).
insert([X, Head | Tail], X, [Head | Tail]) :-
    X < Head.
insert([Head | Result], X, [Head | Tail]) :-
    insert(Result, X, Tail).

insertionSort([], []).
insertionSort(Result, [Head | Tail]) :-
    insertionSort(TailResult, Tail),
    insert(Result, Head, TailResult).
