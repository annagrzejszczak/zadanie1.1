% Atoms

woman1.
woman2.
woman3.

% Facts

person(woman1).
person(woman2).
person(woman3).

garment(dress).
garment(shoes).
garment(glasses).
accessories(bag).

wearing(woman1, yellow, dress).
wearing(woman2, white, dress).
wearing(woman3, black, dress).

holding(woman1, bag).
holding(woman2, bag).
holding(woman3, bag).

walking(woman1, left).
walking(woman3, right).
walks(woman2, middle).

place(alley).

% Rules

members :- person(X), format(' ~w\n', [X]),fail.
who_is_wearing_what :- wearing(X,Y,Z), format('~w is wearing ~w ~w\n', [X,Y,Z]), fail.
who_is_holding_what :- accessories(Y), holding(X,Y), format('~w is holding a ~w\n', [X,Y]), fail.

sides :- walking(X,Y), format('~w is walking on the ~w side \n', [X, Y]),fail.
walks :- person(X), walks(X,Y), format('~w is walking in the ~w between the other women\n', [X,Y]), fail.

places :- 
    
description :- write('The picture presents three women walking: '),nl,
	members;
    write('They are walking side by side: '),nl,
	walks;
    sides;
    write('They are wearing comfortable summer clothes: '),nl,
    who_is_wearing_what;
  	write('And having accessories: '),nl,
    who_is_holding_what.
    
                                    
    