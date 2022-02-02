% Atoms 

camilla.
charles.
elizabeth.
philip.
charlotte.
catherine.
george.
william.
eugenie.
beatrice.
henry.

hat.
dress.
uniform.
suit.

% Facts

person(camilla).
person(charles).
person(elizabeth).
person(philip).
person(charlotte).
person(catherine).
person(george).
person(william).
person(eugenie).
person(beatrice).
person(henry).

woman(camilla).
woman(elizabeth).
woman(catherine).
woman(eugenie).
woman(beatrice).
man(charles).
man(philip).
man(william).
man(henry).
girl(charlotte).
boy(george).

queen(elizabeth).
princess(camilla).
princess(catherine).
princess(eugenie).
princess(beatrice).
princess(charlotte).
prince(charles).
prince(philip).
prince(william).
prince(henry).
prince(george).

child(charles, philip).
child(charles, elizabeth).
child(william, charles).
child(henry, charles).
child(george, catherine).
child(george, william).
child(charlotte, catherine).
child(charlotte, william).

grandchild(charlotte, charles).
grandchild(george, charles).
grandchild(william, elizabeth).
grandchild(william, philip).
grandchild(henry, elizabeth).
grandchild(henry, philip).

greatgrandchild(charlotte, elizabeth, philip).
greatgrandchild(george, elizabeth, philip).

spouse(catherine, william).
spouse(elizabeth, philip).
spouse(camilla, charles).

garment(hat).
garment(dress).
garment(uniform).
garment(suit).

wears(elizabeth, hat).
wears(elizabeth, dress).
wears(camilla, hat).
wears(camilla, dress).
wears(catherine, hat).
wears(catherine, dress).
wears(eugenie, hat).
wears(beatrice, hat).
wears(charlotte, dress).
wears(charles, uniform).
wears(william, uniform).
wears(philip, suit).

stands(elizabeth, middle).

standing(camilla, left).
standing(charles, left).
standing(eugenie, left).
standing(philip, right).
standing(charlotte, right).
standing(catherine, right).
standing(george, right).
standing(william, right).
standing(beatrice, right).
standing(henry, right).

% Rules

married(X,Y) :- parent(X,Z), parent(Y,Z), X \= Y.
sibling(X,Y) :- child(X,Z), child(Y,Z), X\= Y.

who_is_wearing_what :- garment(Y), wears(X,Y), format('~w is wearing ~w\n', [X,Y]), fail.
who_is_standing :- person(X), format('~w is standing\n', [X]), fail.
who_is_standing_where :- person(X), standing(X,Y), format('~w is standing on the ~w side of the picture\n', [X,Y]), fail.
who_is_standing_where :- person(X), stands(X,Y), format('~w is standing in the ~w of the picture\n', [X,Y]), fail.

members :- person(X), format(' ~w\n', [X]),fail.
sides :- standing(X,Y), format(' ~w is standing on the ~w side \n', [X, Y]),fail.
youngest :- greatgrandchild(X,Y,Z), format(' ~w the great-grandchild of the ~w and ~w \n', [X, Y, Z]),fail.
married :- spouse(X,Y), format(' ~w and her husband ~w \n', [X, Y]),fail.

description :- write('The picture presents the Members of the Royal Family with following names: '),nl,
	members;
     write('In the middle of the picture is standing the Queen: elizabeth II. '),nl,
    write('And the rest of the family is standing on both her sides: '),nl,
    sides;
    write('The youngest people in the picture are: '),nl,
    youngest;
    write('Married couples in the picture are: '),nl,
    married;
    write('They are wearing formal clothes: '),nl,
    who_is_wearing_what.