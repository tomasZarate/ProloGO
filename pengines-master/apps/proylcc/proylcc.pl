:- module(:- module(proylcc, 
	[  
		emptyBoard/1,
		goMove/4
	]).

emptyBoard([
		 [-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-],
		 [-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-],
		 [-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-],
		 [-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-],
		 [-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-],
		 [-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-],
		 [-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-],
		 [-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-],
		 [-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-],
		 [-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-],
		 [-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-],
		 [-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-],
		 [-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-],
		 [-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-],
		 [-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-],
		 [-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-],
		 [-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-],
		 [-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-],
		 [-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-,-]
		 ]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% goMove(+Board, +Player, +Pos, -RBoard)
%
% RBoard es la configuración resultante de reflejar la movida del jugador Player
% en la posición Pos a partir de la configuración Board.

goMove(Board, Player, [R,C], RBoard):-
    buscarFila(Board,R,Row),
    
    replace(Row, R, NRow, Board, RBoard),
    replace(-, C, Player, Row, NRow).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% replace(?X, +XIndex, +Y, +Xs, -XsY)
%

replace(X, 0, Y, [X|Xs], [Y|Xs]).

replace(X, XIndex, Y, [Xi|Xs], [Xi|XsY]):-
    XIndex > 0,
    XIndexS is XIndex - 1,
    replace(X, XIndexS, Y, Xs, XsY).

buscarFila([X|Xs],0,X).

buscarFila([X|Xs],Index,Y):-
    IndexS is Index - 1,
    buscarFila(Xs,IndexS,Y).
    
    
