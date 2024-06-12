moduel funcion

use cuadratura
use mcf_cuadratura

public :: f

contains

function f(x) result(f_result)

real,intent(in) :: x
real :: f_result,a,inte,esp,pi

esp=0.0000001
pi=acos(-1.0)
a=0.0
call romberg(c,a,x,inte,esp)
f_result=(1.0/(2.0*pi)**0.5)*inte-0.45

end function f

end module funcion
