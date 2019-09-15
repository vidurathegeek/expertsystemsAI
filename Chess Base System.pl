%To Start the system type start.
% Name : - vidurathegeek

:- use_module(library(jpl)).
start :-sleep(0.4),	
		write('-----------------------------------------------------------------'),nl,
		sleep(0.2),
		write("###################||| Chess Openings Base |||###################"),nl,
		sleep(0.4),
		write('-----------------------------------------------------------------'),nl,nl,nl,
		
		
        /*write("Hello Chessmaster, what's your name : "),
        read(Player),*/
		
		
		interface2.
		
		
       /* hypothesis(Player,Opening),
        write(Player),write(', you are '), write(' probably playing '),write(Opening),write('.'),undo,
		nl,nl,nl,
		sleep(0.7),
		write('*****************************************************************'),nl,
		sleep(0.4),
		write("################||| THANK YOU FOR USE ME |||#####################"),nl,
		sleep(0.4),
		write('*****************************************************************'),nl.*/
        
        
    symptom(Player,e4) :- verify(Player," playing e4 (y/n) ?").
 
    symptom(Player,c5) :- verify(Player," playing c5 (y/n) ?").
  
    symptom(Player,nf3) :- verify(Player," playing nf3 (y/n) ?").

    symptom(Player,nc3) :- verify(Player," playing nc3 (y/n) ?").
    
    symptom(Player,d5) :- verify(Player," playing d5 (y/n) ?").
    
    symptom(Player,exd5) :- verify(Player," playing exd5 (y/n) ?").
	
    symptom(Player,d4) :- verify(Player," playing d4 (y/n) ?").
 
    symptom(Player,d5) :- verify(Player," playing d5 (y/n) ?").
   
    symptom(Player,c4) :- verify(Player," playing c4 (y/n) ?").
  
    symptom(Player,dxc4) :- verify(Player," playing dxc4 (y/n) ?").
   
    symptom(Player,e6) :- verify(Player," playing e6 (y/n) ?").
	
	/*symptom(_,"Sorry, I don't seem to be able to diagnose the Opening.").*/

        
    hypothesis(Player,silicianClosed) :-
        symptom(Player,e4),
        symptom(Player,c5),
        symptom(Player,nc3).
    
    hypothesis(Player,silicianOpen) :-
        symptom(Player,e4),
        symptom(Player,c5),
        symptom(Player,nf3).
        
    hypothesis(Player,queensgambitExcepted) :-
        symptom(Player,d4),
        symptom(Player,c4),
        symptom(Player,dxc4).
        
    hypothesis(Player,queensgambitDecline) :-
        symptom(Player,d4),
        symptom(Player,c4),
        symptom(Player,e5).
        
    hypothesis(Player,centerCounterDefense) :-
        symptom(Player,e4),
        symptom(Player,d5),
        symptom(Player,exd5).

        
	hypothesis(_,"good opening. But I'm Sorry, I don't seem to be able to identify the Opening").
	
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

		hypothesis(Player,Opening),
		interface3(Player,', you probably playing ',Opening,'.'),
        write(Player),write(', you probably playing '),write(Opening),write('.'),undo,end.

end :-
		nl,nl,nl,
		sleep(0.7),
		write('*****************************************************************'),nl,
		sleep(0.4),
		write("################||| THANK YOU FOR USE ME |||#####################"),nl,
		sleep(0.4),
		write('*****************************************************************'),nl.

interface(X,Y,Z) :-
	atom_concat(Y,X, FAtom),
	atom_concat(FAtom,Z,FinalAtom),
	jpl_new('javax.swing.JFrame', ['Expert System'], F),
	jpl_new('javax.swing.JLabel',['--- CHESS BASE SYSTEM ---'],LBL),
	jpl_new('javax.swing.JPanel',[],Pan),
	jpl_call(Pan,add,[LBL],_),
	jpl_call(F,add,[Pan],_),
	jpl_call(F, setLocation, [400,300], _),
	jpl_call(F, setSize, [400,300], _),
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
	jpl_call(F, setLocation, [400,300], _),
	jpl_call(F, setSize, [400,300], _),
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
	jpl_call(F, setLocation, [400,300], _),
	jpl_call(F, setSize, [400,300], _),
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