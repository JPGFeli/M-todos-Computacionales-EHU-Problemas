program integrales

use mcf_cuadratura
use funcion

real :: a,b,esp,inte

esp=0.0000001
a=1.0
b=3.0/2.0
call romberg(f1,a,b,inte,esp)
print *, inte
a=0.0
b=1.0
call romberg(f2,a,b,inte,esp)
print *, inte
a=0.0
b=0.35
call romberg(f3,a,b,inte,esp)
print *, inte
end program integrales
