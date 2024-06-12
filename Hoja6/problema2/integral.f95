program integral1

use integral

real :: a,b,time
integer :: m

print *, "Escriba el número de subintervalos"
read *, m
a=0.0
b=1.0

call trapecio(a,b,m)
call cpu_time(time)
print *, time

end program integral1
