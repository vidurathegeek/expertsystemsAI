:- use_module(library(jpl)).
start :-sleep(0.2),
		write("------------------     Welcome Chessmaster     -------------------"),nl,
		sleep(0.4),
		write('------------------------------------------------------------------'),nl,nl,nl,
		
		
        /*write("Hello Chessmaster, what's your name : "),
        read(Player),*/
		
		
		interface2.
		
		
       /* openingx(Player,Opening),
        write(Player),write(', you are '), write(' probably playing '),write(Opening),write('.'),undo,
		nl,nl,nl,
		sleep(0.7),
		write('------------------------------------------------------------------'),nl,
		sleep(0.4),
		write("------------------    Play Well Chessmaster    -------------------"),nl.*/
        
        
    movex(Player,e4) :- verify(Player," playing e4 (y/n) ?").
 
    movex(Player,c5) :- verify(Player," playing c5 (y/n) ?").
  
    movex(Player,nf3) :- verify(Player," playing nf3 (y/n) ?").

    movex(Player,nc3) :- verify(Player," playing nc3 (y/n) ?").
    
    movex(Player,d5) :- verify(Player," playing d5 (y/n) ?").
    
    movex(Player,exd5) :- verify(Player," playing exd5 (y/n) ?").
	
    movex(Player,d4) :- verify(Player," playing d4 (y/n) ?").
 
    movex(Player,d5) :- verify(Player," playing d5 (y/n) ?").
   
    movex(Player,c4) :- verify(Player," playing c4 (y/n) ?").
  
    movex(Player,dxc4) :- verify(Player," playing dxc4 (y/n) ?").
   
    movex(Player,e6) :- verify(Player," playing e6 (y/n) ?").

    movex(Player,c6) :- verify(Player," playing c6 (y/n) ?").

    movex(Player,nc6) :- verify(Player," playing nc6 (y/n) ?").

    movex(Player,g3) :- verify(Player," playing g3 (y/n) ?").

    movex(Player,bg2) :- verify(Player," playing bg2 (y/n) ?").

    movex(Player,nf6) :- verify(Player," playing nf6 (y/n) ?").

    movex(Player,d6) :- verify(Player," playing d6 (y/n) ?").

    movex(Player,dxe5) :- verify(Player," playing dxe5 (y/n) ?").

    movex(Player,g6) :- verify(Player," playing g6 (y/n) ?").

    movex(Player,bg7) :- verify(Player," playing bg7 (y/n) ?").

    movex(Player,bc4) :- verify(Player," playing bc4 (y/n) ?").

    movex(Player,bc5) :- verify(Player," playing bc5 (y/n) ?").

    movex(Player,bb5) :- verify(Player," playing bb5 (y/n) ?").

    movex(Player,f4) :- verify(Player," playing f4 (y/n) ?").

    movex(Player,exf4) :- verify(Player," playing exf4 (y/n) ?").
	
	/*movex(_,"Sorry, I don't seem to be able to diagnose the Opening.").*/

        
    openingx(Player,silicianClosed) :-
        movex(Player,e4),
        movex(Player,c5),
        movex(Player,nc3).
    
    openingx(Player,silicianOpen) :-
        movex(Player,e4),
        movex(Player,c5),
        movex(Player,nf3).
        
    openingx(Player,queensgambitExcepted) :-
        movex(Player,d4),
        movex(Player,d5),
        movex(Player,c4),
        movex(Player,dxc4).
        
    openingx(Player,queensgambitDecline) :-
        movex(Player,d4),
        movex(Player,d5),
        movex(Player,c4),
        movex(Player,e6).
        
    openingx(Player,centerCounterDefense) :-
        movex(Player,e4),
        movex(Player,d5),
        movex(Player,exd5).

    openingx(Player,caroCan) :-
        movex(Player,e4),
        movex(Player,c6),
        movex(Player,d4),
        movex(Player,d5).

    openingx(Player,frenchDefense) :-
        movex(Player,e4),
        movex(Player,e6),
        movex(Player,d4),
        movex(Player,d5),
        movex(Player,exd5).

    openingx(Player,advanceFrenchDefense) :-
        movex(Player,e4),
        movex(Player,e6),
        movex(Player,d4),
        movex(Player,d5),
        movex(Player,e5).

    openingx(Player,retiOpening) :-
        movex(Player,nf3),
        movex(Player,d5),
        movex(Player,g3),
        movex(Player,nc6),
        movex(Player,bg2).

    openingx(Player,englishOpening) :-
        movex(Player,c4),
        movex(Player,e5),
        movex(Player,nc3),
        movex(Player,nf6),
        movex(Player,d4).

    openingx(Player,englishOpening) :-
        movex(Player,c4),
        movex(Player,e5),
        movex(Player,nc3),
        movex(Player,nf6),
        movex(Player,d4).

    openingx(Player,perkDefense) :-
        movex(Player,e4),
        movex(Player,d6),
        movex(Player,d4),
        movex(Player,e5),
        movex(Player,dxe5).

    openingx(Player,kingsIndianDefense) :-
        movex(Player,d4),
        movex(Player,nf6),
        movex(Player,nc3),
        movex(Player,g6),
        movex(Player,e4),
        movex(Player,d6),
        movex(Player,nf3),
        movex(Player,bg7).

    openingx(Player,guicoPiano) :-
        movex(Player,e4),
        movex(Player,e5),
        movex(Player,nf3),
        movex(Player,nc6),
        movex(Player,bc4),
        movex(Player,bc5).

    openingx(Player,ruilLopez) :-
        movex(Player,e4),
        movex(Player,e5),
        movex(Player,nf3),
        movex(Player,nc6),
        movex(Player,bb5).

    openingx(Player,italianGame) :-
        movex(Player,e4),
        movex(Player,e5),
        movex(Player,nf3),
        movex(Player,nc6),
        movex(Player,nc3),
        movex(Player,nf6),
        movex(Player,bc4),
        movex(Player,bc5).

    openingx(Player,kingsGambit) :-
        movex(Player,e4),
        movex(Player,e5),
        movex(Player,f4),
        movex(Player,exf4).
        
	openingx(_,"may be a good opening. But I'm Sorry, I don't seem to be able to identify the opening your are  trying to play.").
	
    response(Reply) :-
        read(Reply),
        write(Reply),nl.
		
ask(Player,Question) :-
	write(Player),write(', do you play'),write(Question),
	/*read(N),
	( (N == yes ; N == y)
      ->
       assert(yes(Question)) ;
       assert(no(Question)), fail),*/
	
	interface(', are you',Player,Question),
	write('Loading.'),nl,
	sleep(1),
	write('Loading..'),nl,
	sleep(1),
	write('Loading...'),nl,
	sleep(1),
    nl.
	
:- dynamic yes/1,no/1.		
	
verify(P,S) :-
   (yes(S) 
    ->
    true ;
    (no(S)
     ->
     fail ;
     ask(P,S))).
	 
undo :- retract(yes(_)),fail. 
undo :- retract(no(_)),fail.
undo.


pt(Player):- 

		openingx(Player,Opening),
		interface3(Player,', you probably playing ',Opening,'.'),
        write(Player),write(', you probably playing '),write(Opening),write('.'),undo,end.

end :-
		nl,nl,nl,
		sleep(0.7),
		write('------------------------------------------------------------------'),nl,
		sleep(0.4),
		write("------------------    Play Well Chessmaster    -------------------"),nl.

interface(X,Y,Z) :-
	atom_concat(Y,X, FAtom),
	atom_concat(FAtom,Z,FinalAtom),
	jpl_new('javax.swing.JFrame', ['Expert System'], F),
	jpl_new('javax.swing.JLabel',['--- CHESS BASE SYSTEM ---'],LBL),
	jpl_new('javax.swing.JPanel',[],Pan),
	jpl_call(Pan,add,[LBL],_),
	jpl_call(F,add,[Pan],_),
	jpl_call(F, setLocation, [500,500], _),
	jpl_call(F, setSize, [500,500], _),
	jpl_call(F, setVisible, [@(true)], _),
	jpl_call(F, toFront, [], _),
	jpl_call('javax.swing.JOptionPane', showInputDialog, [F,FinalAtom], N),
	jpl_call(F, dispose, [], _), 
	write(N),nl,
	( (N == yes ; N == y)
      ->
       assert(yes(Z)) ;
       assert(no(Z)), fail).
	   		
interface2 :-
	jpl_new('javax.swing.JFrame', ['Expert System'], F),
	jpl_new('javax.swing.JLabel',['--- CHESS BASE SYSTEM ---'],LBL),
	jpl_new('javax.swing.JPanel',[],Pan),
	jpl_call(Pan,add,[LBL],_),
	jpl_call(F,add,[Pan],_),
	jpl_call(F, setLocation, [500,500], _),
	jpl_call(F, setSize, [500,500], _),
	jpl_call(F, setVisible, [@(true)], _),
	jpl_call(F, toFront, [], _),
	jpl_call('javax.swing.JOptionPane', showInputDialog, [F,'Hello Chessmaster, what is your name :'], N),
	jpl_call(F, dispose, [], _), 
	/*write(N),nl,*/
	(	N == @(null)
		->	write('you cancelled'),interface3('you cancelled. ','Thank you ','for use ','me.'),end,fail
		;	write("Hello Chessmaster, what is your name  : "),write(N),nl,pt(N)
	).
	
	
interface3(P,W1,D,W2) :-
	atom_concat(P,W1, A),
	atom_concat(A,D,B),
	atom_concat(B,W2,W3),
	jpl_new('javax.swing.JFrame', ['Expert System'], F),
	jpl_new('javax.swing.JLabel',['--- CHESS BASE SYSTEM ---'],LBL),
	jpl_new('javax.swing.JPanel',[],Pan),
	jpl_call(Pan,add,[LBL],_),
	jpl_call(F,add,[Pan],_),
	jpl_call(F, setLocation, [500,500], _),
	jpl_call(F, setSize, [500,500], _),
	jpl_call(F, setVisible, [@(true)], _),
	jpl_call(F, toFront, [], _),
	jpl_call('javax.swing.JOptionPane', showMessageDialog, [F,W3], N),
	jpl_call(F, dispose, [], _), 
	/*write(N),nl,*/
	(	N == @(void)
		->	write('')
		;	write("")
	).
	
help :- write("To start the chess base system please type 'start.' or sing a song").

% FOC35 vidurathegeek
