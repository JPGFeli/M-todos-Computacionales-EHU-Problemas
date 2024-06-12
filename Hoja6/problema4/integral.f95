program integral

use mcf_cuadratura
use mcf_tipos
use funcion

real(kind=sp) :: a,b,inte,eps,time

a=0.0
b=1.0
eps=0.0000001
call romberg(f,a,b,inte,eps)
print *, inte
call cpu_time(time)
print *, time
end program integral



