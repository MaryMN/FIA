%% Knowledge Base:

top_goal(X) :- tourist_type(X).
iknow_top_goal(X) :-
	asserta(known(true, shape, tall_thin)),
	asserta(known(true, shape, short_thin)),
	asserta(known(true, shape, big_tall)),
	asserta(known(true, ears, broad)),
	asserta(known(true, ears, narrow)),
	asserta(known(true, ears, round)),
	asserta(known(true, eyes_type, small_round)),
	asserta(known(true, eyes_type, deep_big)),
	asserta(known(true, eyes_type, downturned)),
	asserta(known(true, hair, does_have)),
	asserta(known(true, hair, does_not_have)),
	asserta(known(true, head_form, round)),
	asserta(known(true, head_form, cyber)),
	asserta(known(true, head_form, rectangular)),
        asserta(known(true, skin_color, green)),
	asserta(known(true, skin_color, yellowish_white)),
	asserta(known(true, skin_color, blue)),
	asserta(known(true, skin_color, light_brown)),
	asserta(known(true, clothes, yes)),
	asserta(known(true, nose, yes)),
	tourist_type(X).

%% Askables

shape(X) :- menuask(shape, X, [tall_thin, short_thin, big_tall]).
ears(X) :- menuask(ears, X, [broad, narrow, round]).
eyes_type(X) :- menuask(eyes_type, X, [small_round, downturned, deep_big]).
hair(X) :- menuask(hair, X, [does_have, does_not_have]).
head_form(X) :- menuask(head_form, X, [round, cyber, rectangular]).
skin_color(X) :- menuask(skin_color, X, [yellowish_white, blue, blue_green, light_brown]).


clothes(X) :- ask(clothes, X).
nose(X) :- ask(nose, X).

%% Rules
class(first_type) :-
	shape(tall_thin),
	ears(broad).

class(second_type) :-
	shape(short_thin),
	ears(narrow).

class(third_type) :-
	shape(big_tall),
	ears(round).


type(bald) :-
	hair(does_not_have).

type(with_hair) :-
	hair(does_have).

tourist_type(asgardian) :-
	class(third_type),
	eyes_type(deep_big),
	type(with_hair),
	head_form(rectangular),
	skin_color(yellowish_white),
	clothes(yes),
	nose(yes).

tourist_type(wakandan) :-
	class(second_type),
	eyes_type(small_round),
	type(with_hair),
	head_form(round),
	skin_color(light_brown),
	clothes(yes),
	nose(yes).

tourist_type(luphomoid) :-
	class(third_type),
	eyes_type(small_round),
	type(with_hair),
	head_form(cyber),
	skin_color(blue),
	clothes(yes),
	nose(yes).

tourist_type(zehoberei) :-
	class(first_type),
	eyes_type(small_round),
	type(with_hair),
	head_form(rectangular),
	skin_color(green),
	clothes(yes),
	nose(yes).

tourist_type(luna_city_citizens) :-
	class(first_type),
	eyes_type(small_round),
	type(bard),
	head_form(round),
	skin_color(blue).
	%%clothes(no),
	%%nose(no),


tourist_type(titan) :-
        class(second_type),
	eyes_type(small_round),
	type(bald),
	head_form(round),
	skin_color(blue),
	clothes(yes),
	nose(yes).
















