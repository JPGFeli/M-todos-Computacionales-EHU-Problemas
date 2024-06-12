program integral

use simpsonmod

real :: a,b,time
integer :: m

print *, "Escriba el número de subintervalos. Recuerde que debe ser un numero par"
read *, m
a=0.0
b=1.0

call simpson(a,b,m)
call cpu_time(time)
print *, time

end program integral
