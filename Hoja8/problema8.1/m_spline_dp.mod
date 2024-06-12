G95 module created on Fri Mar 22 10:58:29 2024 from mcf_interpolacion.f90
If you edit this, you'll get what you deserve.
module-version 9
(() () () () () () () () () () () () () () () () () () () () ())

()

(('spline' 2) ('splint' 3))

()

()

(4 'byte' 'mcf_tipos' 1 ((PARAMETER UNKNOWN UNKNOWN UNKNOWN NONE NONE) (
INTEGER 8) 0 0 () (CONSTANT (INTEGER 8) 0 '1') () () '' () ())
5 'doble' 'mcf_tipos' 1 ((PARAMETER UNKNOWN UNKNOWN UNKNOWN NONE NONE) (
INTEGER 8) 0 0 () (CONSTANT (INTEGER 8) 0 '8') () () '' () ())
6 'double' 'mcf_tipos' 1 ((PARAMETER UNKNOWN UNKNOWN UNKNOWN NONE NONE)
(INTEGER 8) 0 0 () (CONSTANT (INTEGER 8) 0 '8') () () '' () ())
7 'dp' 'mcf_tipos' 1 ((PARAMETER UNKNOWN UNKNOWN UNKNOWN NONE NONE) (
INTEGER 8) 0 0 () (CONSTANT (INTEGER 8) 0 '8') () () '' () ())
8 'fp' 'mcf_tipos' 1 ((PARAMETER UNKNOWN UNKNOWN UNKNOWN NONE NONE) (
INTEGER 8) 0 0 () (CONSTANT (INTEGER 8) 0 '10') () () '' () ())
9 'full' 'mcf_tipos' 1 ((PARAMETER UNKNOWN UNKNOWN UNKNOWN NONE NONE) (
INTEGER 8) 0 0 () (CONSTANT (INTEGER 8) 0 '10') () () '' () ())
10 'int10' 'mcf_tipos' 1 ((PARAMETER UNKNOWN UNKNOWN UNKNOWN NONE NONE)
(INTEGER 8) 0 0 () (CONSTANT (INTEGER 8) 0 '8') () () '' () ())
11 'int2' 'mcf_tipos' 1 ((PARAMETER UNKNOWN UNKNOWN UNKNOWN NONE NONE) (
INTEGER 8) 0 0 () (CONSTANT (INTEGER 8) 0 '1') () () '' () ())
12 'int4' 'mcf_tipos' 1 ((PARAMETER UNKNOWN UNKNOWN UNKNOWN NONE NONE) (
INTEGER 8) 0 0 () (CONSTANT (INTEGER 8) 0 '2') () () '' () ())
13 'int8' 'mcf_tipos' 1 ((PARAMETER UNKNOWN UNKNOWN UNKNOWN NONE NONE) (
INTEGER 8) 0 0 () (CONSTANT (INTEGER 8) 0 '4') () () '' () ())
14 'long' 'mcf_tipos' 1 ((PARAMETER UNKNOWN UNKNOWN UNKNOWN NONE NONE) (
INTEGER 8) 0 0 () (CONSTANT (INTEGER 8) 0 '8') () () '' () ())
15 'm_spline_dp' 'm_spline_dp' 1 ((MODULE UNKNOWN UNKNOWN UNKNOWN NONE
NONE) (UNKNOWN) 0 0 () () () '' () ())
16 'mcf_tipos' 'mcf_tipos' 1 ((MODULE UNKNOWN UNKNOWN UNKNOWN NONE NONE)
(UNKNOWN) 0 0 () () () '' () ())
17 'selected_int_kind' '(intrinsic)' 1 ((PROCEDURE UNKNOWN INTRINSIC
UNKNOWN NONE NONE FUNCTION) (UNKNOWN) 0 0 () () () '' () ())
18 'selected_real_kind' '(intrinsic)' 1 ((PROCEDURE UNKNOWN INTRINSIC
UNKNOWN NONE NONE FUNCTION) (UNKNOWN) 0 0 () () () '' () ())
19 'sencillo' 'mcf_tipos' 1 ((PARAMETER UNKNOWN UNKNOWN UNKNOWN NONE
NONE) (INTEGER 8) 0 0 () (CONSTANT (INTEGER 8) 0 '4') () () '' () ())
20 'short' 'mcf_tipos' 1 ((PARAMETER UNKNOWN UNKNOWN UNKNOWN NONE NONE)
(INTEGER 8) 0 0 () (CONSTANT (INTEGER 8) 0 '2') () () '' () ())
21 'single' 'mcf_tipos' 1 ((PARAMETER UNKNOWN UNKNOWN UNKNOWN NONE NONE)
(INTEGER 8) 0 0 () (CONSTANT (INTEGER 8) 0 '4') () () '' () ())
22 'sp' 'mcf_tipos' 1 ((PARAMETER UNKNOWN UNKNOWN UNKNOWN NONE NONE) (
INTEGER 8) 0 0 () (CONSTANT (INTEGER 8) 0 '4') () () '' () ())
23 'spline' '(global)' 1 ((PROCEDURE UNKNOWN UNKNOWN UNKNOWN NONE NONE)
(UNKNOWN) 0 0 () () () '' () ())
24 'splint' '(global)' 1 ((PROCEDURE UNKNOWN UNKNOWN UNKNOWN NONE NONE)
(UNKNOWN) 0 0 () () () '' () ())
25 'total' 'mcf_tipos' 1 ((PARAMETER UNKNOWN UNKNOWN UNKNOWN NONE NONE)
(INTEGER 8) 0 0 () (CONSTANT (INTEGER 8) 0 '10') () () '' () ())
26 'word' 'mcf_tipos' 1 ((PARAMETER UNKNOWN UNKNOWN UNKNOWN NONE NONE) (
INTEGER 8) 0 0 () (CONSTANT (INTEGER 8) 0 '4') () () '' () ())
3 'splint_dp' 'm_spline_dp' 1 ((PROCEDURE UNKNOWN MODULE-PROC DECL NONE
NONE SUBROUTINE INVOKED) (PROCEDURE 0) 0 0 (27 NONE 28 NONE 29 NONE 30
NONE 31 NONE 32 NONE) () () '' () ())
32 'y' '' 33 ((VARIABLE OUT UNKNOWN UNKNOWN NONE NONE DUMMY) (REAL 8) 0
0 () () () '' () ())
31 'x' '' 33 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DUMMY) (REAL 8) 0 0
() () () '' () ())
30 'n' '' 33 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DUMMY) (INTEGER 8)
0 0 () () () '' () ())
29 'y2a' '' 33 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DIMENSION DUMMY)
(REAL 8) 0 0 () (1 ASSUMED_SHAPE () ()) () '' () ())
28 'ya' '' 33 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DIMENSION DUMMY) (
REAL 8) 0 0 () (1 ASSUMED_SHAPE () ()) () '' () ())
27 'xa' '' 33 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DIMENSION DUMMY) (
REAL 8) 0 0 () (1 ASSUMED_SHAPE () ()) () '' () ())
2 'spline_dp' 'm_spline_dp' 1 ((PROCEDURE UNKNOWN MODULE-PROC DECL NONE
NONE SUBROUTINE INVOKED) (PROCEDURE 0) 0 0 (34 NONE 35 NONE 36 NONE 37
NONE 38 NONE 39 NONE) () () '' () ())
39 'ypn' '' 40 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE OPTIONAL DUMMY) (
REAL 8) 0 0 () () () '' () ())
38 'yp1' '' 40 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE OPTIONAL DUMMY) (
REAL 8) 0 0 () () () '' () ())
37 'y2' '' 40 ((VARIABLE OUT UNKNOWN UNKNOWN NONE NONE DIMENSION DUMMY)
(REAL 8) 0 0 () (1 ASSUMED_SHAPE () ()) () '' () ())
36 'n' '' 40 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DUMMY) (INTEGER 8)
0 0 () () () '' () ())
35 'y' '' 40 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DIMENSION DUMMY) (
REAL 8) 0 0 () (1 ASSUMED_SHAPE () ()) () '' () ())
34 'x' '' 40 ((VARIABLE IN UNKNOWN UNKNOWN NONE NONE DIMENSION DUMMY) (
REAL 8) 0 0 () (1 ASSUMED_SHAPE () ()) () '' () ())
)

('byte' 0 4 'doble' 0 5 'double' 0 6 'dp' 0 7 'fp' 0 8 'full' 0 9 'int10'
0 10 'int2' 0 11 'int4' 0 12 'int8' 0 13 'long' 0 14 'm_spline_dp' 0 15
'mcf_tipos' 0 16 'selected_int_kind' 0 17 'selected_real_kind' 0 18
'sencillo' 0 19 'short' 0 20 'single' 0 21 'sp' 0 22 'spline' 0 23
'splint' 0 24 'total' 0 25 'word' 0 26)
