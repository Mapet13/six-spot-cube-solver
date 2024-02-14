% colors:
% 	1.red
% 	2.white
% 	3.green
% 	4.orange
%  	5.blue
%  	6.yellow
int: COLOR_COUNT = 6; 
set of int: COLOR = 1..COLOR_COUNT;

int: ROTATION_MAX = 2;
set of int: ROTATION_STATE = 0..ROTATION_MAX;

int: ROTATABLE_CORNERS_COUNT = 3;
set of int: CORNER = 1..ROTATABLE_CORNERS_COUNT;

enum Rotation_move = { Clockwise, CounterClockwise };
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% cube configuration:
array[CORNER] of ROTATION_STATE: corners_rotation;
array[COLOR] of COLOR: spot_colors;
int: MAX_MOVES;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
var int: steps;
array[0..MAX_MOVES] of var Rotation_move: moves_kind;
array[0..MAX_MOVES] of var CORNER: moves_corner;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
solve satisfy;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
output 
["steps         = ", show(steps), ";\n"] ++
["moves_kind    = ", show(moves_kind), ";\n"] ++
["moves_corner  = ", show(moves_corner), ";\n"];


