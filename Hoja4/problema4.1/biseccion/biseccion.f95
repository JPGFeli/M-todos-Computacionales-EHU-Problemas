program biseccion

use function
use bisection

real :: a,b,c,prec
integer :: itmax

print *, "Escriba r" !parámetro de la funcion
read *, r
print *, "Escriba los limites del intervalo en el que se va a evaluar" //&
" la funcion al igual que el numero de iteraciones y la precision"
read *, a,b,itmax,prec

call bisect(a,b,itmax,prec)

end program biseccion