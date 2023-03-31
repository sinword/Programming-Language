/*
Pogramming Assignment #3                                    CS4001301 
=====================================================================
 
1. Prolog  

All the text below should be cut and pasted into a file called pa3prolog.pl. Follow the directions and include any queries requested. 

Complete the following predicates so that they correctly model the relationships between the people listed below as facts.

Show that using your rules, you can infer that dylan, rosa and haru are leo's cousins, and that leo and ronnie are one-another's brother and sister.
Also create queries that test all predicates. 

Deliverables
------------

You need to turn in the followings on Moodle:

- Your Prolog program files.  
- A text file that shows some test output.
*/

% Do not modify the following facts.  Complete the predicates 
% above so that they work with the following facts.

% Facts
male(dylan).
male(ronnie).
male(mark).
male(mel).
male(richard).
female(annie).
female(leo).
female(haru).
female(janny).
female(joan).
female(rosa).

parent(annie, janny).
parent(annie, richard).
parent(annie, joan).
parent(janny, leo).
parent(janny, ronnie).
parent(joan, haru).
parent(mark, janny).
parent(mark, richard).
parent(mel, joan).
parent(richard, dylan).
parent(richard, rosa).

% Rules
mother(X, Y) :- 
    female(X), parent(X, Y).

father(X, Y) :- 
    male(X), parent(X, Y).

daughter(X, Y) :- 
    female(X), parent(Y, X).

son(X, Y) :- 
    male(X), parent(Y, X).

child(X, Y) :- 
    parent(Y, X).

sister(X, Y) :- 
    female(X), parent(Z, X), parent(Z, Y), X \= Y.

brother(X, Y) :- 
    male(X), parent(Z, X), parent(Z, Y), X \= Y.

sibling(X, Y) :-
    parent(Z, X), parent(Z, Y), X \= Y.

uncle(X, Y) :- 
    parent(Z, Y), brother(X, Z).

aunt(X, Y) :- 
    parent(Z, Y), sister(X, Z).

cousin(X, Y) :- 
    parent(Z, X), parent(W, Y), sibling(Z, W).

