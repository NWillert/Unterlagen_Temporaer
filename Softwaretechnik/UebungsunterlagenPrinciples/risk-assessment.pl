<<<<<<< HEAD
﻿/* Traffic Risk Assessment */
=======
/* Traffic Risk Assessment */
>>>>>>> master
/* A possible solution for Prolog */
/* Created 9/2018 by Andreas Barton */
/* Start by executing "go" */
go :-
  risk(Risk),
  write('Risk is '),
  write(Risk),
  nl,
  undo.

<<<<<<< HEAD
/*Risiken*/
=======
/* riks */
>>>>>>> master
risk(high) :-
  high, !.
risk(medium) :- 
  medium, !.
risk(low) :-
  \+low, !.


<<<<<<< HEAD
/*Regeln*/
=======
/* rules */
>>>>>>> master
high :-
  verify("Does it rain?"),
  verify("Is there opposing traffic?").
medium :-
  verify("Does it rain?");
  verify("Is there opposing traffic?").
low :-
  verify("Does it rain?"),
  verify("Is there opposing traffic?").
  

<<<<<<< HEAD
/*Fragen stellen*/
=======
/* asking questions*/
>>>>>>> master
ask(Question) :-
  write('Answer y/n: '),
  write(Question),
  read(Response),
  nl,
  ((Response == yes ; Response == y)->
    assert(yes(Question)) ;
    assert(no(Question)), fail).

:-
  dynamic yes/1, no/1.

/*Verify*/
verify(S) :-
  (yes(S)->
    true ;
  (no(S)->
    fail ;
  ask(S))).

<<<<<<< HEAD
/*alle Aussagen wieder löschen*/
=======
/* delete all propositions */
>>>>>>> master
undo :- 
  retract(yes(_)),
  fail.
undo :-
  retract(no(_)),
  fail.
undo.
