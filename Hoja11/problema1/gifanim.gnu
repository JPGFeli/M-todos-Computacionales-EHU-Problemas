reset
set terminal gif animate delay 1
set output "final.gif" 
set ticslevel 0
set view equal xyz
set dgrid3d 41,41
set surface
set hidden
set pm3d
unset colorbox
#
# stats realiza un analisis completo de un archivo: numero de lineas...
#
# En particular cuenta los "bloques". Dos bloques estan separados por 
# una linea en blanco
#
# En este caso cada bloque contiene la informacion correspondiente a un 
# instante de tiempo: en cada bloque hay tripletas x,y,f(x,y).
#
# El número de bloques se almacena en la variable STATS_blocks
#
stats "dat.dat" nooutput
#
# Ahora se dibuja secuencialmente cada bloque
# 
# El bucle empieza en 0 porque el índice del primer bloque es 0.
#
# STATS_blocks detecta un bloque adicional al ultimo
#
do for [i=0:int(STATS_blocks)-2] {
set dgrid3d 100,100
splot "dat.dat" index i w l
}
set out
set term wxt
