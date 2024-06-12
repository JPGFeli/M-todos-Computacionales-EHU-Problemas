module funcion

use mcf_tipos

public :: f

contains

function f(x) result(f_r)

real(kind=dp),intent(in) :: x
real(kind=dp) :: f_r,pi

pi=acos(-1.0_dp)
f_r=0.9_dp*cos(2.0_dp*pi*x)

end function f

end module funcion
