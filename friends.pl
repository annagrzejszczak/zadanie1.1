% Atoms

rachel.
monica.
phoebe.
joey.
chandler.
ross.

desserts.
banana_cake.
top.
blouse.
sweater.
shirt.

%Facts

person(rachel).
person(monica).
person(phoebe).
person(joey).
person(chandler).
person(ross).

food(desserts).
food(banana_cake).

hair(rachel, blond).
hair(monica, black).
hair(phoebe, blond).
hair(joey, black).
hair(chandler, brown).
hair(ross, black).

standing(chandler, left).
standing(rachel, left).
standing(ross, left).
standing(monica, right).
standing(joey, right).
standing(phoebe, right).

wearing(reachel, top).
wearing(monica, blouse).
wearing(phoebe, top).
wearing(joey, sweater).
wearing(chandler, shirt).
wearing(ross, sweater).

drinking1(monica, joey, phoebe).
drinking2(reachel, chandler, ross).


siblings(monica, ross).
married(monica, chandler).

% Rules

who_is_standing_where :- standing(X,Y), format('~w is standing on the ~w side of the picture\n', [X,Y]), fail.
who_is_wearing_what :- wearing(X,Y), format('~w is wearing a ~w\n', [X,Y]), fail.
who_is_drinking :- drinking1(X,Y,Z), format('~w is drinking the same frappe with ~w and ~w \n', [X,Y,Z]), fail.
who_is_drinking :- drinking2(X,Y,Z), format('~w is drinking the same frappe with ~w and ~w \n', [X,Y,Z]), fail.

members :- person(X), format(' ~w\n', [X]),fail.
married :- married(X,Y), format(' ~w and her husband ~w \n', [X, Y]),fail.
siblings :- siblings(X,Y), format(' ~w and her brother ~w \n', [X, Y]),fail.
hairs :- hair(X,Y), format(' ~w has ~w hair \n', [X, Y]),fail.
food :- food(X), format(' ~w \n', [X]),fail.

description :- write('The picture presents the Members of the Friends series with following names: '),nl,
	members;
     write('They are standing next to each other: '),nl,
    who_is_standing_where;
    write('they are in their thirties and: '),nl,
    hairs;
    write('There is one married couple: '),nl,
    married;
    write('Siblings in the picture are: '),nl,
    siblings;
    write('They are wearing casual clothes: '),nl,
    who_is_wearing_what;
    write('They are drinking together using the straws: '),nl,
    who_is_drinking;
	write('On the table are: '),nl,
	food.